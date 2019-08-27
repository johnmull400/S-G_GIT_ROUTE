exec dbo.sp_insert_posting_slip 
'WOD', -- posting code
'[today:d8]', -- posting date
3513, -- costcentre
null, -- ACCode
'[matters.entityref]', -- Client 1 code
[matters.number], -- Client 1 matterno 
null, -- Client 2 code
null, -- Client 2 matterno
'[?.FE]', -- Ref
'[?.reason]N[?.med_fee][?.inv_fee]NY[?.inf_hearing]', --narative 1
'[?.explanation]', -- narrative 2
'[?.FE]', -- narrative 3
null, --Payment Type
'Write Off', -- PayeePayer
0, -- Cheque printing options
0, -- VAT
null, --DisbCatCode
'[?.wo_value]', --TotalAmount
0, -- VAT code
null, -- Comments
'[matters.feeearnerref]' -- originator


-- SP call
USE [Partner]
GO

DECLARE @RC int
DECLARE @PostingCode varchar(10) --literal
DECLARE @PostedDate datetime     -- getdate()
DECLARE @CostCentre int          -- ???
DECLARE @AcCode varchar(10)      --NULL
DECLARE @Client1Code varchar(15) --[entityref]
DECLARE @Client1MatterNo int     --[matterno]
DECLARE @Client2Code varchar(15) -- NULL
DECLARE @Client2MatterNo int     --NULL
DECLARE @Ref varchar(8)          -- [FeeEarner.Code]
DECLARE @Narrative1 varchar(255) -- Literal
DECLARE @Narrative2 varchar(255) -- NULL
DECLARE @Narrative3 varchar(255) -- NULL
DECLARE @PaymentType varchar(30) -- ??? 
DECLARE @PayeePayer varchar(100) -- [TPI Name]
DECLARE @ChequePrintingOptions int -- 0
DECLARE @VAT float                -- 0
DECLARE @DisbCatCode varchar(10)  -- NULL
DECLARE @TotalAmount float        -- Get from general params
DECLARE @VAT_Code int             -- 0
DECLARE @Comments varchar(100)    -- NULL
DECLARE @Originator varchar(4)    -- [currentuser.code]

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[sp_insert_posting_slip] 
   'CDR'
  ,getdate()
  ,???
  ,NULL
  ,'[matters.entityref]'
  ,[matters.number]
  ,NULL
  ,NULL
  ,[FeeEarner.Code]
  ,'???'
  ,NULL
  ,NULL
  ,NULL
  ,'[?.tpi_name]'
  ,0
  ,0
  ,NULL
  ,[?.amt]
  ,0
  ,NULL
  ,[currentuser.code]
GO

select general_parameters from usr_key_data_srs where entityref = 'TEST00000000001' and matterno = 13
select general_parameters from usr_key_data_srs where entityref = 'TEST00000000001' and matterno = 12


posting code
cost centre
Narrative

--[sql: DECLARE @RC int EXEC @RC = dbo.sp_insert_posting_slip  '???', (select getdate()) ,???,NULL,'[matters.entityref]',[matters.number],NULL,NULL,[FeeEarner.Code],'???',NULL,NULL,NULL,'[?.tpi_name]',0,0,NULL,[?.amt],0,NULL,[currentuser.code]]

select top 2 * from Ac_Posting_Slips where postingcode = 'CDR' and CostCentre <> -1