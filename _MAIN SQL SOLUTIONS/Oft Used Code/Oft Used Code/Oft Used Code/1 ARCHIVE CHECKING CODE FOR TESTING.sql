
-- SELECT STATEMENTS
Begin Try
 
  select * from sgs_claimsportal.dbo.ClaimArchiveQueue
  select * from sgs_claimsportal.dbo.Claims

  /*select * from Usr_NIHL_Defendants
where entityref = 'tes000000003265' and MatterNo = 1


select * from Usr_Post_Litigation_NIHL_Master_srs
where entityref = 'tes000000003265' and MatterNo = 1


select * from Usr_NIHL_Routes_srs
where entityref = 'tes000000003265' and MatterNo = 1*/
  
End Try
Begin Catch
    Select
	  ERROR_NUMBER() AS ErrorNumber,
	  ERROR_SEVERITY() AS ErrorSeverity,
	  ERROR_STATE() AS ErrorState,
	  ERROR_PROCEDURE() AS ErrorProcedure,
	  ERROR_LINE() AS ErrorLine,
	  ERROR_MESSAGE() AS ErrorMessage
End Catch

GO

--===============================================================================================

-- FOR DATA CHANGING TRANSACTIONS
Begin tran ;
Begin Try
 
delete from Usr_NIHL_Defendants
where entityref = 'tes000000003265' and MatterNo = 1


delete from Usr_Post_Litigation_NIHL_Master_srs
where entityref = 'tes000000003265' and MatterNo = 1



delete from Usr_NIHL_Routes_srs
where entityref = 'tes000000003265' and MatterNo = 1
  
End Try
Begin Catch
    Select
	  ERROR_NUMBER() AS ErrorNumber,
	  ERROR_SEVERITY() AS ErrorSeverity,
	  ERROR_STATE() AS ErrorState,
	  ERROR_PROCEDURE() AS ErrorProcedure,
	  ERROR_LINE() AS ErrorLine,
	  ERROR_MESSAGE() AS ErrorMessage
	if @@TRANCOUNT > 0
	   ROLLBACK TRAN
End Catch

if @@TRANCOUNT > 0
	  COMMIT TRAN

GO

commit