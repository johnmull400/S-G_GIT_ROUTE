USE [Partner]
GO
/****** Object:  Trigger [dbo].[tr_afterinsert_matters]    Script Date: 12/04/2019 12:36:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER    trigger [dbo].[tr_afterinsert_matters] on [dbo].[Matters]
for insert
as

	IF SYSTEM_USER ='SILVERBECK\PartnerEAS' RETURN
	/*
		version 1
		date : 26/6/2012
		VVT
		set all new matters lockid to 8
		date : 25/2/2013
		VVT
		Default client bank code to Quindell Client Bank and officebankref to Quindell Office Bank 1

		Version 1.1
		Date: 22/01/2018
		Developer: Steve Barrie/Mike Foubister
		Update Matters table to set the LockID relevant to the case type
		RTA = LockID 48
		ELPL = LockID 49
		CICA = LockID 50 
		Remainder = LockID 8
		Epic = P4W-1876

		Version 1.2
		Date 12/04/2019
		John Mulligan
		Change the allocation of Partners on a new case to match the business structure

	*/
	
	--Version 1.1 - set the LockID relevant to the case type
	update m set m.lockid =	CASE WHEN m.CaseTypeRef in (601, 602,603,604,605, 484) THEN 49
							   WHEN m.casetyperef in (491,492,493,494,495,496,607,608, 506, 355, 501) THEN 48
							   WHEN m.casetyperef = 612 THEN 50
							   ELSE 8
							END
						   ,m.ClientBankRef=33,m.OfficeBankRef=32
	from inserted ins inner join Matters m on m.EntityRef=ins.EntityRef and m.Number=ins.Number
	where (ins.LockID is null or ins.LockID=0)

	--*******************************************************************************************
	--    This is the old assignment of Partner on a new case to Matt Jarvis
	--    They now want this changed to the Partner most relevant to the case type
	-- update m set m.[PartnerRef]='MJA'
	-- from inserted ins inner join Matters m on m.EntityRef=ins.EntityRef and m.Number=ins.Number

	-- Code added by John Mulligan 12-04-2019
	update m set m.partnerref =	CASE WHEN m.CaseTypeRef in(416, 491, 492, 493, 494, 506) THEN 'PAW'
							   WHEN m.casetyperef in(496, 607, 608) THEN 'PTM'
							   WHEN m.casetyperef in(601,602,603,604,605) THEN 'HLG'
							   ELSE 'MJA'
							END
						   ,m.ClientBankRef=33,m.OfficeBankRef=32
	from inserted ins inner join Matters m on m.EntityRef=ins.EntityRef and m.Number=ins.Number
	where (ins.PartnerRef is null or ins.PartnerRef='')
    -- **********************************************************************************************/
	
	-- Am I a member of Liabilities Claims Department creating a Defendant Case.
	If (Exists(Select a.* From Inserted as a
		Inner Join CaseTypes as b
			on a.CaseTypeRef = b.Code
		Inner Join Users as c
			On a.FeeEarnerRef = c.Code
		Inner Join Departments as d
			On c.Department = d.Code
		Where b.Description Like '%defendant%'
			And d.Description = 'Liability Claims'))
	BEGIN
		-- Yes E-mail Ruth Hogendoorn.
		Declare @tEntity varchar(15)
		Declare @nlMatter Int
		Declare @tTo varchar(50)
		Declare @tFeeEarner Varchar(100)
		Declare @tMessage Varchar(100)

		Select @tEntity = a.EntityRef,
			@nlMatter = a.Number,
			@tFeeEarner = b.FullName
		From Inserted as a
		Inner Join Users as b
			On a.FeeEarnerRef = b.Code

		Set @tTo = 'Ruth Hogendoorn'
		Set @tMessage = 'The Case Ref (' + @tEntity + '/' + Cast(@nlMatter as Varchar(20)) + '). Was created today (' +
			Cast(GetDate() as Varchar(100)) + ') by ' + @tFeeEarner

		Exec Sr_Create_Message @tTo, '', 'Defendant Created By Liability Claims', @tMessage, '', @tEntity, @nlMatter
	End

--exec GetVirtualFeeEarner @tEntity,@nlMatter

