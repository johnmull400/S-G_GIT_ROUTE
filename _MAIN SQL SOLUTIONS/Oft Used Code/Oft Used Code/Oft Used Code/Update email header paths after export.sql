


-- Preproduction and Live ELPL Email headers
update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name = 'Email - Supervisor advising of hearing' and casetypegroupref = 26
select *,location,emailtemplate from dm_documents where name = 'Email - Supervisor advising of hearing' and casetypegroupref = 26


-- Dev ELPL Email headers
update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name like 'Email%' and casetypegroupref = 28
select * from dm_documents where name like 'Email%' and casetypegroupref = 30


select * from dm_documents where name = 'Email - Retrievals Case Closure'


select * from dm_answers where mergedata like '%set hearing_date%'


select getdate() + 111

update dbo.Usr_key_data_srs set protocol_expire_Date = (select getdate + 111) where entityRef = 'TEST00000000000' and matterno = 4


