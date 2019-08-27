use partner

-- These are the queries to see what’s happening:

-- Waiting to merge
SELECT *
  FROM [Partner].[dbo].[SR_PDF_MergeRequests] --where MergeID = 66771
where EntityRef = 'TEST00000000001' and MatterNo = 14 order by MergeID desc

 -- Merged
  select * from SR_PDF_MergeRequests_Archive --where MergeID in( 66793, 66795)
where EntityRef = 'TEST00000000001' and MatterNo = 14 order by datemerged desc

-- Check how many sent
 select * from SR_PDF_MergeRequests_Archive where SaveToPath like '%med report mandate%' and EntityRef not like 'TEST%'

delete from [dbo].[SR_PDF_MergeRequests] where mergeid = 68345
