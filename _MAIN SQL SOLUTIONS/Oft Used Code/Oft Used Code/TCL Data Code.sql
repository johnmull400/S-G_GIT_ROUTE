declare @e as varchar(15) = 'AAG000000000011'
declare @m as int = 1





Select * from matters where entityref = @e and number = @m
Select * from Usr_Key_Data_srs where entityref = @e and matterno = @m
Select * from Usr_costs_settlement_srs where entityref = @e and matterno = @m

-- Claimant Fasttrack 1 ================================================================================================================================

-- Court records exist
select top 10 m.EntityRef,m.Number,m.CaseTypeRef,c.EntityRef,c.MatterNo  from usr_court_srs c
left join matters m on m.entityref=c.EntityRef and m.Number = c.MatterNo 
where m.entityref is not null and m.casetyperef = 491


-- matters
select * from matters where casetyperef = 491 


select * from Cm_Agendas
inner join matters m on m.entityref = cm_agendas.EntityRef and m.number = cm_agendas.matterno  
INNER JOIN    Cm_CaseItems ON Cm_Agendas.ItemID = Cm_CaseItems.itemid
inner join cm_caseItems ci on ci.parentid =  Cm_CaseItems.itemid
where (ci.description like 'Case Step - 3  month supervisor%') and m.CaseTypeRef = 612 order by m.entityref

-- Default Agendas
select * from Cm_Agendas where EntityRef 
in('AAR000000000059',
'ABB000000000777',
'BOO000000000741',
'BOO000000000782',
'BOO000000000809',
'HOU000000000453',
'HOU000000000473',
'HOU000000000551',
'HOU000000000545',
'ROS000000001148',
'ROT000000000235',
'ROU000000000236',
'SID000000000358',
'SID000000000373',
'SID000000000387') and matterno = 1 and default_agenda = 1



-- CaseItems
select * from Cm_Agendas  a
INNER JOIN    Cm_CaseItems ci ON a.ItemID = ci.itemid
inner join cm_caseItems ci1 on ci1.parentid =  ci.itemid
where a.entityref
in('AAR000000000059',
'ABB000000000777',
'BOO000000000741',
'BOO000000000782',
'BOO000000000809',
'HOU000000000453',
'HOU000000000473',
'HOU000000000551',
'HOU000000000545',
'ROS000000001148',
'ROT000000000235',
'ROU000000000236',
'SID000000000358',
'SID000000000373',
'SID000000000387') and matterno = 1 and default_agenda = 1


-- CM_Steps
select * from Cm_Agendas  a
INNER JOIN    Cm_Steps ci ON a.ItemID = ci.itemid
where a.entityref
in('AAR000000000059',
'ABB000000000777',
'BOO000000000741',
'BOO000000000782',
'BOO000000000809',
'HOU000000000453',
'HOU000000000473',
'HOU000000000551',
'HOU000000000545',
'ROS000000001148',
'ROT000000000235',
'ROU000000000236',
'SID000000000358',
'SID000000000373',
'SID000000000387') and matterno = 1 and default_agenda = 1



-- DiaryTasks
select * from Diary_Tasks
where entityref
in('AAR000000000059',
'ABB000000000777',
'BOO000000000741',
'BOO000000000782',
'BOO000000000809',
'HOU000000000453',
'HOU000000000473',
'HOU000000000551',
'HOU000000000545',
'ROS000000001148',
'ROT000000000235',
'ROU000000000236',
'SID000000000358',
'SID000000000373',
'SID000000000387') and matternoref = 1 order by entityref


-- Claimant ULR ================================================================================================================================

-- matters
select * from matters where casetyperef = 495 


-- Default Agendas
select * from Cm_Agendas where EntityRef 
in('ABD000000000518',
'AGG000000000040',
'BAI000000000952',
'BAR000000005257',
'HAR000000005300',
'HAR000000005536',
'ROG000000000560',
'ROO000000000225',
'TOD000000000164',
'TON000000000457') and matterno = 1 and default_agenda = 1



-- CaseItems
select * from Cm_Agendas  a
INNER JOIN    Cm_CaseItems ci ON a.ItemID = ci.itemid
inner join cm_caseItems ci1 on ci1.parentid =  ci.itemid
where a.entityref
in('ABD000000000518',
'AGG000000000040',
'BAI000000000952',
'BAR000000005257',
'HAR000000005300',
'HAR000000005536',
'ROG000000000560',
'ROO000000000225',
'TOD000000000164',
'TON000000000457') and matterno = 1 and default_agenda = 1


-- CM_Steps
select * from Cm_Agendas  a
INNER JOIN    Cm_Steps ci ON a.ItemID = ci.itemid
where a.entityref
in('ABD000000000518',
'AGG000000000040',
'BAI000000000952',
'BAR000000005257',
'HAR000000005300',
'HAR000000005536',
'ROG000000000560',
'ROO000000000225',
'TOD000000000164',
'TON000000000457') and matterno = 1 and default_agenda = 1



-- DiaryTasks
select * from Diary_Tasks
where entityref
in('ABD000000000518',
'AGG000000000040',
'BAI000000000952',
'BAR000000005257',
'HAR000000005300',
'HAR000000005536',
'ROG000000000560',
'ROO000000000225',
'TOD000000000164',
'TON000000000457') and matternoref = 1 order by entityref



-- Claimant MT ================================================================================================================================

-- matters
select * from matters where casetyperef = 496 


-- Default Agendas
select * from Cm_Agendas where EntityRef 
in('ABR000000000202',
'BEN000000001799',
'CLA000000004021',
'COL000000000818',
'COR000000000945',
'CRE000000000202',
'FIR000000000000',
'FIN000000000615',
'HOL000000002378',
'HOO000000000280') and matterno = 1 and default_agenda = 1



-- CaseItems
select * from Cm_Agendas  a
INNER JOIN    Cm_CaseItems ci ON a.ItemID = ci.itemid
inner join cm_caseItems ci1 on ci1.parentid =  ci.itemid
where a.entityref
in('ABR000000000202',
'BEN000000001799',
'CLA000000004021',
'COL000000000818',
'COR000000000945',
'CRE000000000202',
'FIR000000000000',
'FIN000000000615',
'HOL000000002378',
'HOO000000000280') and matterno = 1  and default_agenda = 1


-- CM_Steps
select * from Cm_Agendas  a
INNER JOIN    Cm_Steps ci ON a.ItemID = ci.itemid
where a.entityref
in('ABR000000000202',
'BEN000000001799',
'CLA000000004021',
'COL000000000818',
'COR000000000945',
'CRE000000000202',
'FIR000000000000',
'FIN000000000615',
'HOL000000002378',
'HOO000000000280') and matterno = 1  and default_agenda = 1



-- DiaryTasks
select * from Diary_Tasks
where entityref
in('ABR000000000202',
'BEN000000001799',
'CLA000000004021',
'COL000000000818',
'COR000000000945',
'CRE000000000202',
'FIR000000000000',
'FIN000000000615',
'HOL000000002378',
'HOO000000000280') and matternoref = 1  order by entityref






-- ELPL 1 ================================================================================================================================

-- matters
select * from matters where casetyperef = 601


-- Default Agendas
select * from Cm_Agendas where EntityRef 
in('ABR000000000209',
'AHM000000001654',
'AJA000000000078',
'COB000000000153',
'COL000000002717',
'GIB000000000779',
'GID000000000053',
'LER000000000024',
'LIN000000001265',
'SEL000000000721') and matterno = 1 



-- CaseItems
select * from Cm_Agendas  a
INNER JOIN    Cm_CaseItems ci ON a.ItemID = ci.itemid
inner join cm_caseItems ci1 on ci1.parentid =  ci.itemid
where a.entityref
in('ABR000000000209',
'AHM000000001654',
'AJA000000000078',
'COB000000000153',
'COL000000002717',
'GIB000000000779',
'GID000000000053',
'LER000000000024',
'LIN000000001265',
'SEL000000000721') and matterno = 1 


-- CM_Steps
select * from Cm_Agendas  a
INNER JOIN    Cm_Steps ci ON a.ItemID = ci.itemid
where a.entityref
in('ABR000000000202',
'BEN000000001799',
'CLA000000004021',
'COL000000000818',
'COR000000000945',
'CRE000000000202',
'FIR000000000000',
'FIN000000000615',
'HOL000000002378',
'HOO000000000280') and matterno = 1  and default_agenda = 1



-- DiaryTasks
select * from Diary_Tasks
where entityref
in('ABR000000000209',
'AHM000000001654',
'AJA000000000078',
'COB000000000153',
'COL000000002717',
'GIB000000000779',
'GID000000000053',
'LER000000000024',
'LIN000000001265',
'SEL000000000721') and matternoref = 1  order by entityref






-- ELPL MT ================================================================================================================================

-- matters
select * from matters where casetyperef = 605


-- Default Agendas
select * from Cm_Agendas where EntityRef 
in('BUT000000000961',
'GAP000000000053',
'KNI000000000427',
'MCG000000000948',
'HIC000000000194',
'SHA000000003571',
'SIM000000001259',
'SOO000000000038',
'SRS000000000000',
'TAY000000002172') and matterno = 1 



-- CaseItems
select * from Cm_Agendas  a
INNER JOIN    Cm_CaseItems ci ON a.ItemID = ci.itemid
inner join cm_caseItems ci1 on ci1.parentid =  ci.itemid
where a.entityref
in('BUT000000000961',
'GAP000000000053',
'KNI000000000427',
'MCG000000000948',
'HIC000000000194',
'SHA000000003571',
'SIM000000001259',
'SOO000000000038',
'SRS000000000000',
'TAY000000002172') and matterno = 1 


-- CM_Steps
select * from Cm_Agendas  a
INNER JOIN    Cm_Steps ci ON a.ItemID = ci.itemid
where a.entityref
in('BUT000000000961',
'GAP000000000053',
'KNI000000000427',
'MCG000000000948',
'HIC000000000194',
'SHA000000003571',
'SIM000000001259',
'SOO000000000038',
'SRS000000000000',
'TAY000000002172') and matterno = 1  


-- DiaryTasks
select * from Diary_Tasks
where entityref
in('BUT000000000961',
'GAP000000000053',
'KNI000000000427',
'MCG000000000948',
'HIC000000000194',
'SHA000000003571',
'SIM000000001259',
'SOO000000000038',
'SRS000000000000',
'TAY000000002172') and matternoref = 1   order by entityref




-- CICA 1 ================================================================================================================================

-- matters
select * from matters where casetyperef = 612


-- Default Agendas
select * from Cm_Agendas where EntityRef 
in('ABD000000000566',
'AGY000000000029',
'AND000000002187',
'BEN000000001702',
'CHA000000003527',
'CHO000000000568',
'CRA000000001183',
'CUR000000000624',
'DAV000000003960',
'DRA000000006159') and matterno = 1 



-- CaseItems
select * from Cm_Agendas  a
INNER JOIN    Cm_CaseItems ci ON a.ItemID = ci.itemid
inner join cm_caseItems ci1 on ci1.parentid =  ci.itemid
where a.entityref
in('ABD000000000566',
'AGY000000000029',
'AND000000002187',
'BEN000000001702',
'CHA000000003527',
'CHO000000000568',
'CRA000000001183',
'CUR000000000624',
'DAV000000003960',
'DRA000000006159') and matterno = 1 


-- CM_Steps
select * from Cm_Agendas  a
INNER JOIN    Cm_Steps ci ON a.ItemID = ci.itemid
where a.entityref
in('ABD000000000566',
'AGY000000000029',
'AND000000002187',
'BEN000000001702',
'CHA000000003527',
'CHO000000000568',
'CRA000000001183',
'CUR000000000624',
'DAV000000003960',
'DRA000000006159') and matterno = 1  


-- DiaryTasks
select * from Diary_Tasks
where entityref
in('ABD000000000566',
'AGY000000000029',
'AND000000002187',
'BEN000000001702',
'CHA000000003527',
'CHO000000000568',
'CRA000000001183',
'CUR000000000624',
'DAV000000003960',
'DRA000000006159') and matternoref = 1   order by entityref






-- Financial Recovery / PPI ================================================================================================================================

-- matters
select * from matters where casetyperef = 500


-- Default Agendas
select * from Cm_Agendas where EntityRef 
in('HUG000000000149',
'SOL100000000658') and matterno = 1 



-- CaseItems
select * from Cm_Agendas  a
INNER JOIN    Cm_CaseItems ci ON a.ItemID = ci.itemid
inner join cm_caseItems ci1 on ci1.parentid =  ci.itemid
where a.entityref
in('HUG000000000149',
'SOL100000000658') and matterno = 1 


-- CM_Steps
select * from Cm_Agendas  a
INNER JOIN    Cm_Steps ci ON a.ItemID = ci.itemid
where a.entityref
in('HUG000000000149',
'SOL100000000658') and matterno = 1  


-- DiaryTasks
select * from Diary_Tasks
where entityref
in('HUG000000000149',
'SOL100000000658') and matternoref = 1   order by entityref












































































































