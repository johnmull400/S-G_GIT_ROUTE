-- This will give us the list of steps and the code used in the snippet below.
select distinct code, name , questionnumber,CaseTypeGroupRef from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where mergedata like '%Client - Detailing Offer%' and casetypegroupref in(28) order by name



-- This will tell us which question is the one before the question that calls the letter
-- so we know where to insert the EchoSign Test.
select * from dm_questions where (gotoquestion = 48 or gotodata like '%48%') and documentcode =  10707
select * from dm_answers where (gotoquestion = 48 or gotodata like '%48%') and documentcode =  10707




if(select Preferred_Coms from usr_client_srs where entityref = 'TES000000001253' and matterno = 6) = 'F - Email EchoSign' select 'a' else select 'b'