USE [Partner]
GO

begin tran
INSERT INTO [dbo].[SR_PDF_FormFill]
           ([TemplateID]
           ,[Ordinal]
           ,[FieldID])
     VALUES
           (8
           ,7
           ,48)

rollback
commit





select * from dbo.SR_PDF_FormFill where TemplateID = 8


update dbo.SR_PDF_FormFill set FieldID = 50 where id = 99