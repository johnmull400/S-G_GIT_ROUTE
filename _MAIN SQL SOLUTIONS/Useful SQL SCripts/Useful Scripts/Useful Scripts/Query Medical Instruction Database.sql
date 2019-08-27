use QLS_Medical

select a.*, n.MessageNameDescription, d.MessageDirectionDescription from [dbo].[Messages_Archive] a inner join MessageNames n on a.MessageNameId = n.MessageNameId inner join MessageDirections d on a.MessageDirectionId = d.MessageDirectionId where PoNumber = 8162509

union

select a.*, n.MessageNameDescription, d.MessageDirectionDescription from [dbo].[Messages] a inner join MessageNames n on a.MessageNameId = n.MessageNameId inner join MessageDirections d on a.MessageDirectionId = d.MessageDirectionId where PoNumber = 8162509







