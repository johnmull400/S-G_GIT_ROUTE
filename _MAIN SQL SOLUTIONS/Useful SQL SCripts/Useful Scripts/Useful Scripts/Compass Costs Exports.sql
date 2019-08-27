--USE [QLS_MatterExport]
--GO

--DECLARE @RC int
---- TODO: Set parameter values here.

--EXECUTE @RC = [dbo].[usp_addExportRequest] 
--   'WAL000000007510'
--  ,1
--  ,'MTA'
--GO



use Partner

select feeearnerref , FullName, entityref, number from matters m 
inner join users u on u.Code = m.FeeEarnerRef
where entityref in(
'THO000000007513'
,'THY000000000048'
,'LEW000000002457'
,'EZE000000000049'
,'CON000000003529'
,'DRU000000000516'
,'ROW000000001308'
,'HAL000000005066'
,'EDM000000000361'
,'WAL000000007510'
,'PAT000000004478'
,'LIL000000000312'
,'DAL000000001068'
,'ROD000000000980'
) and number = 1 order by EntityRef


00000000


use QLS_MatterExport


INSERT INTO	ExportRequests
			(EntityRef,MatterNo,RequestDate,RequestedBy)
			VALUES
			('ROB000000012262',1,GETDATE(),'ALG')


select ExportRequestId,entityref, matterno, RequestDate,convert(varchar(5),RequestDate , 108) as RequestTime,  ErrorMessage from ExportRequests 
where ExportStarted is null order by RequestDate Desc

select convert(varchar(5),ExportCompleted, 108),EntityRef,MatterNo from ExportRequests_Archive 
where RequestDate > getdate() -1 order by RequestDate Desc

