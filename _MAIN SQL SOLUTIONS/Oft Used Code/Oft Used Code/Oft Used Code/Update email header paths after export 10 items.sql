












-- Preproduction and Live ELPL Email headers
update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - MIB Claim form pdf' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - MIB Claim form pdf' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - MIB Conditional Assignment form pdf' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - MIB Conditional Assignment form pdf' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - MIB fast track negotiations' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - MIB fast track negotiations' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - MIB forms' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - MIB forms' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - Original Fee Earner - chasing paper file' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - Original Fee Earner - chasing paper file' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - Premex insight instruction' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - Premex insight instruction' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - Recapture instruction' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - Recapture instruction' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - Retrievals case closure' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - Retrievals case closure' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - Retrievals reactivation of file' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - Retrievals reactivation of file' and casetypegroupref = 26

update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - Sarah Pople LVI Allegation received' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - Sarah Pople LVI Allegation received' and casetypegroupref = 26















 



