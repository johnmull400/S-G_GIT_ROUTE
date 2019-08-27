SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Mulligan
-- Create date: 24/02/2016
-- Description:	To update the Defendant with 
--              the id of the representing TPSol
-- =============================================
ALTER PROCEDURE sr_proc_Update_Defendant_Rep_ID
	@Entityref varchar(15),
	@MatterNo int,
	@Def_ContactId int,
	@TPSol_Contact_Id int,
	@mode int
	
AS    
BEGIN
	
	--Add the TPSol id to the Defendant record
	if @mode = 1
		update Usr_Third_Party_el_pl set Representing_Sol_ID = @TPSol_Contact_Id 
		where contactid = @Def_ContactId and
		entityref = @Entityref and
		matterno = @MatterNo


	--Remove the TPSol id from the Defendant record
	if @mode = 2
		update Usr_Third_Party_el_pl set Representing_Sol_ID = NULL 
		where contactid = @Def_ContactId and
		entityref = @Entityref and
		matterno = @MatterNo
  
END

