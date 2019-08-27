

-- PDF Merge ---------------------------------------------
SELECT mergeid,mr.dateadded,entityref,matterno,errormessage, * FROM [Partner].[dbo].[SR_PDF_MergeRequests] mr 
where entityref like 'TES%1253' and matterno = 1010 order by mr.DateAdded desc

Delete from [Partner].[dbo].[SR_PDF_MergeRequests] where mergeid in(165524,
165514,
165458,
165448,
165447)

exec [Partner].[dbo].[sr_PDFUtils_Merge] 'TES000000001253', 1006, True, True, 24, '178583039', '178583040', '-1',1,0,24




SELECT mergeid,mr.dateadded,entityref,matterno,errormessage, * FROM [Partner].[dbo].[SR_PDF_MergeRequests] mr 
where errormessage = '-1' order by mr.DateAdded desc


SELECT count(1) FROM [Partner].[dbo].[SR_PDF_MergeRequests] mr 
where entityref like 'LOW%1982'and matterno = 1


-- PDF Merge Archive -----------------------------------------------
SELECT mra.dateadded,* FROM [Partner].[dbo].[SR_PDF_MergeRequests_Archive] mra 
where entityref like 'TES%1253' and matterno = 1010 order by mra.DateAdded desc

-- New documents ---------------------------------------------------
SELECT * FROM [SR_eSign].[dbo].[tblNewDocuments] nd
where entityref like 'TES%1253' and matterno = 1010  order by nd.DateAdded desc

SELECT * FROM [SR_eSign].[dbo].[tblNewDocuments] where filename like '%Client - Ack Retainer enc DOL Form Mandate (ES)_185532007_1.pdf'
-- tblDocuments
SELECT 
    *
  FROM [SR_eSign].[dbo].[tblDocuments] 
  where entityref like 'TES%1253' and matterno = 1010
order by PostedDate desc

use [SR_eSign]
select * from tblDocumentStatus


