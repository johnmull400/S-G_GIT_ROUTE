USE [Partner]
GO

INSERT INTO [dbo].[SR_PDF_FormFill]
           ([TemplateID]
           ,[Ordinal]
           ,[FieldID])
     VALUES
           (8
           ,3
           ,3)
GO


select * from dbo.SR_PDF_FormFill where TemplateID = 8


update dbo.SR_PDF_FormFill set ordinal = 9 where id = 93