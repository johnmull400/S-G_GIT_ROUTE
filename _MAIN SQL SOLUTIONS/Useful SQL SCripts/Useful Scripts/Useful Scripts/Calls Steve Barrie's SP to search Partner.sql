


--Calls Steve Barrie's function to search Partner

DECLARE	@return_value int 
EXEC	@return_value = [dbo].[uspBPMSSearchPartner]  @Filter = 'Claimant%srs' SELECT 'Return Value' = @return_value 
select @return_value