
-- The doc permissions table has no record for a given documnts until you set the permissions in partner.
-- What we will have to do is insert a record for each global document into the doc permissions table
-- for every casetype EXCEPT conveayancing.

USE [Partner]
GO

SELECT [doccode]
      ,[casetype]
  FROM [dbo].[DM_DocumentsPermissions]
GO



select dp.casetype,* from DM_documents d
inner join dm_documentspermissions dp on dp.doccode = d.code
where d.CaseTypeGroupRef = 0 


select dp.casetype,* from dm_documentspermissions dp
inner join dm_documents d  on d.code = dp.doccode
where d.CaseTypeGroupRef = 0 

select * from DM_documents
where CaseTypeGroupRef = 0
