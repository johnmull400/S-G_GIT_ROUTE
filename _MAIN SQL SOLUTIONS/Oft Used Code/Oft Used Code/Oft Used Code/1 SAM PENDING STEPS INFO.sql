
use partner
select SUM(PendingSamSteps)AS 'Pending Today',sum(needtobebatched) AS 'Need to be Batched Today'
from sr_viw_SAM_DiaryTasks where SAM_DiaryDateDATE = '2014-05-27' 

select SUM(PendingSamSteps)AS 'Pending All',sum(needtobebatched) AS 'Need to be Batched All'
from sr_viw_SAM_DiaryTasks 

select Count(*) as 'Completed Today' from cm_steps where samcompleteid > 0 and convert(varchar(10),sentdate,103) = '27/05/2014' 

select entityref,description from sam_data sd 
inner join cm_caseitems cm on cm.ItemID = sd.StepId 
where processid = 236619 order by entityref 

select *  from sam_data where processid = 258140 and id < 2158639
delete  from sam_data where processid = 258140 and id < 2158639

select * from sam_data where processid = 258140 order by entityref 
select * from sam_data where processid = 247043 order by entityref 
select * from sam_data where stepid = 61450747

/********** DELETE SAM DATA AND SAM PROCESS *************
begin tran
delete from sam_data where processid = 241386
rollback
commit

begin tran
delete from sam_process where id = 241386
rollback
commit
/*******************************************************/

/*********** -- CODE TO SPLIT BATCHES ***********************************************
select * from sam_data where processid = 182856 and entityref >= 'M%' and entityref <= 'S%'
*/
begin tran
 update sam_data set processid = 258319 where processid = 258249 and entityref >= 'K%' and entityref <= 'Q%'
rollback
commit
/****************************************************************************************************************/

/************ CLEAR LOCKS *****************************************

select * from workstation_locks where fieldid = 247033
update workstation_locks set locktype = -1 where fieldid = 247033 
delete from workstation_locks  where fieldid = 247033 and locked = '2014-05-27 14:16:11.690'

*******************************************************************/

/****************UPDATE THE BATCH STATUS *********************
--status 1 = Created
--status 2 = Running
--status 3 = Outsanding
--status 4 = Complete

update SAM_process set status = 3 where id = 247033 
update SAM_process set locked = 0 where id = 188774
**************************************************************/




/*
select *
from sr_viw_SAM_DiaryTasks order by SAM_DiaryDateDATE

2257

begin tran
delete from cm_steps where itemid in (58830366,
36288161,
40132951,
56128452,
60712464,
61885182,
52196006,
55332155,
60286773,
61874645,
26960352,
35880116,
58660384,
56128971,
58682109,
60925988,
61821710,
61833423,
61846601,
61858705)
rollback
commit
*/




select * from SAM_Process where status = 2 and usercreated in('SYS','PTR') and id = 193122 order by datecreated desc


USE [Partner]
GO

INSERT INTO [dbo].[SAM_Process]
           ([CaseType]
           ,[MaxConsequence]
           ,[DateFor]
           ,[DateCreated]
           ,[UserCreated]
           ,[Status]
           ,[Description]
           ,[Locked])
     VALUES
           (0
           ,9
		   ,getdate()
           ,getdate()
           ,'PTR'
           ,3
           ,'John MUlligan Batch 3'
           ,0)
GO




select * from SAM_Process sp
inner join sam_data sd on sd.ProcessId = sp.id
where status = 3 and usercreated in('SYS','PTR') and sp.id = 135281
where datecreated >= '2014-03-11 00:00:00.000'


-- Find empty processes for a given date and delete with the ids
select * from sam_process p
left outer join sam_data d on d.processid = p.id
where processid is null and status <> 4 and datecreated >= '2014-04-08 00:00:00.000'

begin tran
delete from sam_process where id in(211816,
212652,
212942,
212919,
213036,
213120,
211789,
213051,
212848,
213112,
212468)
rollback
commit
