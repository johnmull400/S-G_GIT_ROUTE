-- This will match a question to a case step on a given file
-- Example finds which case step on a file has the word "web" in it
-- to find out which step on the file opens the web portal

select ci.itemid,ci.description,QuestionNumber FROM Cm_Agendas  
INNER JOIN    Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
inner join cm_steps cs on cs.itemid=ci.itemid
inner join dm_documents d on d.name = ci.Description
inner join dm_questions q on d.code = q.documentcode  
where (Cm_Agendas.entityref = 'kil000000000176') and (matterno = 1) 
and q.questiontext like '%web%' 
--and (isnull(cs.DiaryDate,'') <> ''   )


