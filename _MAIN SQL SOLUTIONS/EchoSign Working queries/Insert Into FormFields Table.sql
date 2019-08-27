USE [Partner]


BEGIN TRAN
INSERT INTO [dbo].[SR_PDF_FormFields]
           ([FieldName]
           ,[ValueQuery]
           ,[DefaultValue]
           ,[IsQueriable])
     VALUES
           ('Court_Address'
           ,'TBA'
           ,-1
           ,1)

ROLLBACK
COMMIT



BEGIN TRAN

update [dbo].[SR_PDF_FormFields] 
set ValueQuery = 'I will be attending the Trial on #TRIAL_DATE# at #TRIAL_TIME# at Court Address'
WHERE FieldID = 46

ROLLBACK 
COMMIT


select * from dbo.SR_PDF_FormFields 

