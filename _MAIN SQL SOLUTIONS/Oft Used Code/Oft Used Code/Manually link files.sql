


DECLARE @RC int
declare @ErrorDescription as varchar(150)

-- TODO: Set parameter values here.

EXECUTE @RC = [Partner].[dbo].[SR_Proc_manually_link_files] 
   'HUS000000001355'
  ,1
  ,'WAR000000001617'
  ,1
  ,''
  ,''
  ,''
  ,@ErrorDescription OUTPUT
  
select @ErrorDescription 
GO




select * from Linked_Matters where from_entity = 'TEST00000000000'