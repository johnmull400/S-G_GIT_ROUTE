use partner

-- dm_answers - mergedata
select distinct mergedata,name , questionnumber,CaseTypeGroupRef, * from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where mergedata like '%Email - Union Notification of Issue of Court Proceedings%'

-- dm_answers - gotodata
select distinct GoToData,name , questionnumber,CaseTypeGroupRef, * from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where GoToData like '%Email - Union Notification of Issue of Court Proceedings%' order by d.name 




select name , * from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where gotodata like '%?.datediff%21%' and DocumentCode = 9487

-- dm_questions
select name,questionnumber,questiontext,CaseTypeGroupRef from dm_questions q  
inner join dm_documents d on d.code = q.documentcode 
where questiontext like '%Is%ATE%' order by name,questionnumber

select * from Casetypegroups



-- dm_documents
select * from dm_documents 
where Name like 'Date%indemnify%'

select * from dm_documents 
where code = 11592



select * from dm_documents where Name like '%LOE%'

select * from users where fullname like 'Asif%'

 declare @r as varchar(100)
 set @r=(select substring(dep.description, 1, len(dep.description)) 
			   from departments dep inner join users usr 
			   on dep.code = usr.department where usr.code='AAA') 
 select @r


 --declare @r as varchar(100)
 declare @return as varchar(100) 
 EXEC dbo.auto_alloc_cmd 'PIN000000000407',1,2,'AAA', @return output select @return


 select * from departments d 
 inner join users u on u.department = d.code

 
 select * from departments where len(description) <= 4 order by description

 select * from departments where code = 543

 select department,* from users where department = 543



 update departments set Description = 'F001-JFB' where code = 543
 
 
 --PI001 Form of Authority ????????????
 select * from dm_documents where Code = 9038
 
  --PI008 Details of Loss (Financial Losses)
 select * from dm_documents where Code = 13679
  
 --PI019 Medical Mandate
 select * from dm_documents where Code = 11354
 
 
 select * from dm_documents where code 
 in
 (9038,
 13705,
 13679,
 9653,
 11354)




