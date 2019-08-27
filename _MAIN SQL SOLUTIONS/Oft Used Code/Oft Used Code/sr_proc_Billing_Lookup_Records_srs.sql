-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE sr_proc_Billing_Lookup_Records_srs
	-- Add the parameters for the stored procedure here
	@mode int,
	@BranchID tinyint,
	@CaseTypeRef int,
	@RangeFrom money,
	@RangeTo money,
    @SettlementPercent numeric(6,2),
	@FixedCost money,
	@MinimumCost money,
	@MaximumCost money,
	@IssueOptionID int,
	@LVPICase varchar(1),
	@FixedDateFlag varchar(1),
    @FixedDate datetime,
				   ,<SettlementRangeLower, money,>
				   ,<MIBUntracedFlag, varchar(1),>
				   ,<ProductTypeFlag, varchar(2),>)

	
AS
BEGIN
	
	USE [Partner]

	    if @mode = 0
		-- Insert on mode 0
		INSERT INTO [dbo].[Usr_Billing_Costs_Lookup_srs]
				   ([BranchID]
				   ,[CaseTypeRef]
				   ,[RangeFrom]
				   ,[RangeTo]
				   ,[SettlementPercent]
				   ,[FixedCost]
				   ,[MinimumCost]
				   ,[MaximumCost]
				   ,[IssueOptionID]
				   ,[LVPICase]
				   ,[FixedDateFlag]
				   ,[FixedDate]
				   ,[SettlementRangeLower]
				   ,[MIBUntracedFlag]
				   ,[ProductTypeFlag])
			 VALUES
				   (<BranchID, tinyint,>
				   ,<CaseTypeRef, int,>
				   ,<RangeFrom, money,>
				   ,<RangeTo, money,>
				   ,<SettlementPercent, numeric(6,2),>
				   ,<FixedCost, money,>
				   ,<MinimumCost, money,>
				   ,<MaximumCost, money,>
				   ,<IssueOptionID, int,>
				   ,<LVPICase, varchar(1),>
				   ,<FixedDateFlag, varchar(1),>
				   ,<FixedDate, datetime,>
				   ,<SettlementRangeLower, money,>
				   ,<MIBUntracedFlag, varchar(1),>
				   ,<ProductTypeFlag, varchar(2),>)
		



		-- Update on mode 1
		if @mode = 1
		UPDATE [dbo].[Usr_Billing_Costs_Lookup_srs]
		   SET [BranchID] = <BranchID, tinyint,>
			  ,[CaseTypeRef] = <CaseTypeRef, int,>
			  ,[RangeFrom] = <RangeFrom, money,>
			  ,[RangeTo] = <RangeTo, money,>
			  ,[SettlementPercent] = <SettlementPercent, numeric(6,2),>
			  ,[FixedCost] = <FixedCost, money,>
			  ,[MinimumCost] = <MinimumCost, money,>
			  ,[MaximumCost] = <MaximumCost, money,>
			  ,[IssueOptionID] = <IssueOptionID, int,>
			  ,[LVPICase] = <LVPICase, varchar(1),>
			  ,[FixedDateFlag] = <FixedDateFlag, varchar(1),>
			  ,[FixedDate] = <FixedDate, datetime,>
			  ,[SettlementRangeLower] = <SettlementRangeLower, money,>
			  ,[MIBUntracedFlag] = <MIBUntracedFlag, varchar(1),>
			  ,[ProductTypeFlag] = <ProductTypeFlag, varchar(2),>
		 WHERE <Search Conditions,,>



  
END

