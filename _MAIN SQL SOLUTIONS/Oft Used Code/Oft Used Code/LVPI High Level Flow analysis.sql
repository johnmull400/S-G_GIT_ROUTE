

-- Is called by
select name , * from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where mergedata like '%Case Step - Liability response (LVPI)%' and name like '%Case%'


-- Calls
select  questionnumber, answertext,mergedata from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where ((mergedata like '%Take%') or (mergedata like '%Insert%')) and name = 'Case step - Client LOE (LVPI)'


/*
select name,* from dm_questions q  
inner join dm_documents d on d.code = q.documentcode 
where questiontext like '%care%' 


select * from dm_answers where documentcode = 6901 and mergename like '%?.medno%'


[sql:select substring((select(percentage_elpl from usr_key_data_srs where entityref = '[matters.entityref]' and matterno = [matters.number]), 5,6)]

select substring((select percentage from usr_key_data_srs where entityref = 'test00000000000' and matterno = 1),5,6)
*/

select * from dm_documents where name like 'Email - Treatment Provider - case declined'
