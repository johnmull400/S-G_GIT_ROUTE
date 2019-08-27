
select entityref, matterno,CONVERT(varchar(10),Stay_Expiry_Date,103),IndefiniteStay from usr_court_srs 
where Stay_Expiry_Date is not null and Stay_Expiry_Date >= getdate()