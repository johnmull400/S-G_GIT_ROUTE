



--    EXEC msdb.dbo.sp_send_dbmail
--    @profile_name = 'PartnerTrustsEmail',
--    @recipients = 'john.mulligan@slatergordonsolutions.co.uk',
--    @subject = 'Trusts Email',    
--	@body = 'This is a test trusts email' 


--	USE [Partner]
--GO


declare @entityref varchar(15) = 'TES000000001253'
declare @matterno int = 1002
declare @str as varchar(200) = (select 'Trusts Email ' + ' ' + @entityref + '.' + cast(@matterno as varchar(30)))

DECLARE @RC int
EXEC @RC = dbo.sr_proc_BPMSSendMail 
  'PartnerTrustsEmail',
  'john.mulligan@slatergordonsolutions.co.uk',
   @str,
  'This is a test trusts email'




