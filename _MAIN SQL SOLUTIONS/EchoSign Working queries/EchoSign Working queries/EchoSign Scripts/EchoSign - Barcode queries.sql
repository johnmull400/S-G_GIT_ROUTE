

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
set SQLStatement = 'SR_EchosignDocUpload_srs @EntityRef, @matterno, @itemid, 24'
where ModeId = 23

begin tran
delete from SR_PDF_Merger_SQLStatements where modeid = 5 and Execorder = 2

commit

--Update support table records /////////////////////////////////////////////////////////////////////
USE [SR_eSign]
begin tran
update tblTemplates set InitialMessageID = 11,remindermessageid = 10 where TemplateID = 24
Select * from tblTemplates
rollback
commit


--Insert support table records /////////////////////////////////////////////////////////////////////
INSERT INTO [dbo].[tblTemplates]
           ([TemplateID]
           ,[Template]
           ,[InitialMessageID]
           ,[ReminderMessageID])
     VALUES
           (25
           ,'ES025'
           ,12
           ,11)
Select * from tblTemplates
--------------------------------------------------------------------------------------------------------
USE [SR_eSign]
INSERT INTO [dbo].[tblInitialMessages]
           ([InitialMessageID]
           ,[InitialMessageText])
     VALUES
           (12
           ,'Please sign and return your Clinical Negligence Witness Statement')
Select * from tblInitialMessages
--------------------------------------------------------------------------------------------------------
USE [SR_eSign]
INSERT INTO [dbo].[tblReminderMessages]
           ([ReminderMessageID]
           ,[ReminderMessageText])
     VALUES
           (11,
           'Please remember to sign and return your Clinical Negligence Witness Statement')
Select * from tblReminderMessages

----------------------------------------------------------------------------------------------------------
use partner
begin tran
INSERT INTO [dbo].[SR_PDF_Merger_SQLStatements]
           ([ModeId]
           ,[ExecOrder]
           ,[SQLStatement])
     VALUES
           (25
           ,1
           ,'SR_EchosignDocUpload_srs @EntityRef, @matterno, @itemid, 25')

		   commit
Select * from SR_PDF_Merger_SQLStatements
--////////////////////////////////////////////////////////////////////////////////////////////////////////



update tblInitialMessages set InitialMessageText = 'Please complete your Court Procedings Pack form' where initialmessageid = 8


begin tran
update tblTemplates set Template = 'ES010', InitialMessageID = 5, ReminderMessageID = 4
where TemplateID = 15

rollback
commit

Select * from tblTemplates
--14	CRU1D	1	1