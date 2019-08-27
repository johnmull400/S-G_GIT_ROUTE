


--Code that sets the funding check boxes
SELECT ISNULL(FundingUndertaken,0) AS FundingUndertaken
FROM Lvpi_Viw_LiabilityFunding_Funding 
WHERE entityref = 'TEA000000000566' 
AND MatterNo = 1 
AND contactref IS NOT NULL
-- Is the xaml form expecting a result to be returned from this query
-- and not blank or null?


--Validate the funding
IF EXISTS (SELECT 1 FROM usr_Key_Data_srs  
WHERE entityref = 'TEA000000000566' 
AND MatterNo = 1
AND funding_type <> '' 
AND funding_type <> 'A - Select' 
AND funding_type IS NOT NULL) SELECT 1 ELSE select 0
-- This returns the value 1 from Key Data when you run the select statement on its own
-- and selects the vaulue 1 when you run the entire thing.


--Funding membership organisation
select MembershipOrganisation 
from Lvpi_Viw_LiabilityFunding_Funding 
where entityref = 'txtEntityref.Text' 
and MatterNo = txtMatterNo.Text

--Funding agreement date
select cast(convert(date,AgreementDate) as varchar(10)) 
from Lvpi_Viw_LiabilityFunding_Funding 
where cast(convert(date,AgreementDate) as varchar(10)) <> '1900-01-01' 
and entityref = 'txtEntityref.Text' 
and MatterNo = txtMatterNo.Text))