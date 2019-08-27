


select name , * from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where mergedata like '%pref%com%' order by d.name,QuestionNumber


select name,* from dm_questions q  
inner join dm_documents d on d.code = q.documentcode 
where questiontext like '%pref%com%' 





