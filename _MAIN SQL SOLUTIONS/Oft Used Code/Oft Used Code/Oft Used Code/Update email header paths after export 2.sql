


-- Preproduction and Live ELPL Email headers
update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name like 'Email - Clins%' and casetypegroupref = 26
select code,name,location,emailtemplate from dm_documents where name like 'Email - Clins%' and casetypegroupref = 26 order by name


-- Dev ELPL Email headers
update dm_documents set emailtemplate = (REPLACE(location,'.html','.xml')) where name like 'Email%' and casetypegroupref = 28
select * from dm_documents where name like 'Email%' and casetypegroupref = 30




