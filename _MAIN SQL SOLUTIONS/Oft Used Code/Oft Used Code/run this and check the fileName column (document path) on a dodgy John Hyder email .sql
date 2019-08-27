-- run this and check the fileName column (document path) on a dodgy John Hyder email
-- to see what it is compared to a valid one as in
-- \\SRDOCS1\Partner\Docs\A\S\H\ASH613\1\Email - Supervisor advising of hearing_28353898_1.msg

select * FROM Cm_Agendas  
INNER JOIN    Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
inner join cm_steps cs on cs.itemid=ci.itemid
where (Cm_Agendas.entityref = 'ash000000000613') and (matterno = 1) 
and (ci.description = 'Email - Supervisor advising of hearing') 

