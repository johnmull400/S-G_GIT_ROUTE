

-- The following tables are part of the barcoding of the EchoSign pdfs

use Partner

select * from SR_PDF_Merger_SQLStatements



use SR_eSign

Select * from tblTemplates

Select * from tblInitialMessages

Select * from tblReminderMessages


use Partner

Select * from SR_PDF_Merger_SQLStatements

update SR_PDF_Merger_SQLStatements 
set SQLStatement = 'SR_EchosignDocUpload_srs @EntityRef, @matterno, @itemid, 7'
where ModeId = 7

begin tran
delete from SR_PDF_Merger_SQLStatements where modeid = 5 and Execorder = 2

commit

begin tran
update tblTemplates set Template = 'ES009' where TemplateID = 14


USE [SR_eSign]


INSERT INTO [dbo].[tblTemplates]
           ([TemplateID]
           ,[Template]
           ,[InitialMessageID]
           ,[ReminderMessageID])
     VALUES
           (22
           ,'ES022'
           ,1
           ,1)

		   14	CRU1D	1	1
Select * from tblTemplates

update tblInitialMessages set InitialMessageText = 'Please complete your Court Procedings Pack form' where initialmessageid = 8

begin tran
INSERT INTO [dbo].[SR_PDF_Merger_SQLStatements]
           ([ModeId]
           ,[ExecOrder]
           ,[SQLStatement])
     VALUES
           (22
           ,1
           ,'SR_EchosignDocUpload_srs @EntityRef, @matterno, @itemid, 22')

		   commit

Select * from SR_PDF_Merger_SQLStatements

begin tran
update tblTemplates set Template = 'ES010', InitialMessageID = 5, ReminderMessageID = 4
where TemplateID = 15

rollback
commit

Select * from tblTemplates
--14	CRU1D	1	1