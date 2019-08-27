
USE [Partner]

-- PDF Merge ---------------------------------------------
SELECT mergeid,mr.dateadded,entityref,matterno,errormessage, * FROM [dbo].[SR_PDF_MergeRequests] mr 
where entityref like 'LOW%1982' and matterno = 1 order by mr.DateAdded desc

SELECT mergeid,mr.dateadded,entityref,matterno,errormessage, * FROM [dbo].[SR_PDF_MergeRequests] mr 
where errormessage = '-1' order by mr.DateAdded desc


SELECT count(1) FROM [dbo].[SR_PDF_MergeRequests] mr 
where entityref like 'LOW%1982'and matterno = 1


-- PDF Merge Archive -----------------------------------------------
SELECT mra.dateadded,* FROM [dbo].[SR_PDF_MergeRequests_Archive] mra 
where entityref  like 'LOW%1982' and matterno = 1 order by mra.DateAdded desc

-- New documents ---------------------------------------------------
SELECT * FROM [SR_eSign].[dbo].[tblNewDocuments] nd
where entityref like 'LOW%1982' and matterno = 1  order by nd.DateAdded desc

SELECT * FROM [SR_eSign].[dbo].[tblNewDocuments] where filename like '%Client - Ack Retainer enc DOL Form Mandate (ES)_185532007_1.pdf'
-- tblDocuments
SELECT 
    *
  FROM [SR_eSign].[dbo].[tblDocuments] 
  where entityref like 'TES%1253'
order by PostedDate desc


