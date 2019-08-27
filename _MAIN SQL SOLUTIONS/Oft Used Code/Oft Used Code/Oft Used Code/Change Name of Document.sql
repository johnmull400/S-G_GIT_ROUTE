-- Review and update before running


update dm_documents 
set location = '\\srsql.srdev.local\partner\template\srs_template\Client - CFA oral advice.doc'
where casetypegroupref = 26 and name = 'Client - CFA oral advice'

select * from dm_documents where casetypegroupref = 26 and name = 'Client - CFA oral advice'