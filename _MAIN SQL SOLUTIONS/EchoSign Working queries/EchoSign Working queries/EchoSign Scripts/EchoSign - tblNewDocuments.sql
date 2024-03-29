/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [NewDocumentID]
      ,[TemplateID]
      ,[EntityRef]
      ,[MatterNo]
      ,[FeeEarnerCode]
      ,[RecipientEmail]
      ,[FileName]
      ,[DateAdded]
      ,[IsProcessed]
      ,[DateProcessed]
      ,[ErrorMessage]
      ,[DocumentSourceID]
  FROM [SR_eSign].[dbo].[tblNewDocuments] order by NewDocumentID desc