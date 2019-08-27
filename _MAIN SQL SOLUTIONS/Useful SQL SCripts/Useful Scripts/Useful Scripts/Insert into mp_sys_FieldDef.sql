
use partner

Select MAX(id) from Mp_Sys_FieldDef 

Select * from Mp_Sys_FieldDef where externalfieldname like '%anticipated%'

select * from Mp_Sys_TableDef where InternalName like '%costs_settlement%'

Select * from Mp_Sys_FieldDef where id = 7828886

begin tran
Delete from Mp_Sys_FieldDef where id = 7828886


table id 7823382


-- Estimated settlement date
begin tran

INSERT INTO [dbo].[Mp_Sys_FieldDef]
           ([ID]
           ,[TableRef]
           ,[InternalFieldName]
           ,[ExternalFieldName]
           ,[SQLTypeRef]
           ,[DefaultValue]
           ,[Size]
           ,[EntityTypeRef]
           ,[ReadLock]
           ,[WriteLock]
           ,[Validation]
           ,[Mandatory]
           ,[System]
           ,[Designable]
           ,[ContextHelp]
           ,[Tooltip]
           ,[Visible]
           ,[Computed]
           ,[GDPR])
     VALUES
           (7828886
           ,7823382	
           ,'Estimated_Settlement_Date'
           ,'Estimated Settlement Date'
           ,91
           ,''
           ,0
           ,0
           ,0
           ,0
           ,''
           ,0
           ,0
           ,1
           ,NULL
           ,NULL
           ,1
           ,0
           ,0)
rollback
commit


-- Anticipated Professional Fees -------------------------------------------------------------------------------
begin tran

INSERT INTO [dbo].[Mp_Sys_FieldDef]
           ([ID]
           ,[TableRef]
           ,[InternalFieldName]
           ,[ExternalFieldName]
           ,[SQLTypeRef]
           ,[DefaultValue]
           ,[Size]
           ,[EntityTypeRef]
           ,[ReadLock]
           ,[WriteLock]
           ,[Validation]
           ,[Mandatory]
           ,[System]
           ,[Designable]
           ,[ContextHelp]
           ,[Tooltip]
           ,[Visible]
           ,[Computed]
           ,[GDPR])
     VALUES
           (7828887
           ,7823382
           ,'Anticipated_Professional_Fees'
           ,'Anticipated Professional Fees'
           ,99
           ,0.00
           ,0
           ,0
           ,0
           ,0
           ,''
           ,0
           ,0
           ,1
           ,NULL
           ,NULL
           ,1
           ,0
           ,0)
rollback
commit
