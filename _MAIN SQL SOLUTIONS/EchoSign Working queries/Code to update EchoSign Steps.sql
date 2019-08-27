-- This will give us the list of steps and the code used in the snippet below.
select distinct code, name , questionnumber,CaseTypeGroupRef from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where mergedata like '%Client - Advising of Trial%' and casetypegroupref in(26,28,30)



-- This will tell us which question is the one before the question that calls the letter
-- so we know where to insert the EchoSign Test.
select * from dm_questions where (gotoquestion = 18 or gotodata like '%18%') and documentcode =  8512
select * from dm_answers where (gotoquestion = 18 or gotodata like '%18%') and documentcode =  8512