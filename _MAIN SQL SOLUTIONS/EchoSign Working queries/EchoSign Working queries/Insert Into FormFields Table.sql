USE [Partner]


BEGIN TRAN
INSERT INTO [dbo].[SR_PDF_FormFields]
           ([FieldName]
           ,[ValueQuery]
           ,[DefaultValue]
           ,[IsQueriable])
     VALUES
           ('Court_ELPL_Ref'
           ,'SELECT [ContactRef] FROM std_mattercontacts WHERE entityref = ''#ENTITYREF#'' AND matterno = #MATTERNO# AND [entitytyperef] = 87'
           ,-1
           ,1)

ROLLBACK
COMMIT
select * from dbo.SR_PDF_FormFields 





48	Court_ELPL_Ref	'SELECT [ContactRef] FROM std_mattercontacts WHERE entityref = ''#ENTITYREF#'' AND matterno = #MATTERNO# AND [entitytyperef] = 87'	-1	1

BEGIN TRAN

update [dbo].[SR_PDF_FormFields] 
set ValueQuery =  'SELECT REPLACE((SELECT ISNULL([Address1], '''') + '', '' + ISNULL([Address2], '''') + '', '' + ISNULL([Address3], '''') + '', '' + ISNULL([Address4], '''') FROM [Entities] WHERE	[CODE] = ''#COURT_ELPL_REF#''), '' , '', '''')'
WHERE FieldID = 47

ROLLBACK 
COMMIT


select * from dbo.SR_PDF_FormFields 

 update [dbo].[SR_PDF_FormFields] 
set ValueQuery =  'I wil be attending the Trial on #TRIAL_DATE# at #TRIAL_TIME# at #COURT_ELPL_ADDRESS#'
WHERE FieldID = 46