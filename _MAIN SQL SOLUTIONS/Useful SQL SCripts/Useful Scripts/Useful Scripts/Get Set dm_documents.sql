
use partner
-- COLLECTION OF SELECT STATEMENTS FROM DM_DOCUMENTS
Select MainClassID, * from dm_documents where code = 11354

Select location,emailtemplate,name,* from dm_documents where name like '%Signed%deed%rec%'
Select Name,location from dm_documents where DocumentType = 11 and name not like 'zz%'

select name from dm_documents where code = 11292


-- DM_DOCS UPDATE STATEMENT
begin tran
update dm_documents set EmailTemplate = '\\sgs-p4w-fsv-t01.sr.local\Partner2\Template\18000.xml' where code = 18000
-- Run this without the where clause to update all the doc locations to qualify them with the sever name and domain
replace(location,'qls-uat-fs01','qls-uat-fs01.sr.local') where code = 4163

begin tran
update dm_documents set Location = '\\sgs-p4w-fsv-t01.sr.local\Partner\Template\16998.pdf' where code = 16998
-- Run this without the where clause to update all the doc locations to qualify them with the sever name and domain
replace(EmailTemplate,'qls-uat-fs01','qls-uat-fs01.sr.local') where code = 7634

Select name,* from dm_documents where location like '%.pdf'


rollback 
commit 


select * from DocumentType

select replace('\\qls-uat-fs01.sr.local\Partner\Template\srs_template\client - enclosing settlement cheque.docx','qls-uat-fs01.sr.local','qls-uat-fs01' )