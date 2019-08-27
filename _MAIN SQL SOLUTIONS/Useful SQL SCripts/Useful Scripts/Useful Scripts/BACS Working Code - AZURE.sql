


select * from Usr_Incoming_Cheque_Details where Cheque_Number = 1392


select * from Usr_Incoming_Cheque_Details where BACS_Number = 11191


-- To select a ledger transaction
Select top 100 * from AC_client_ledger_transactions where Client_Credit > 0.00 --where Transaction_No = 1188


-- To check that the BACS record has saved
select * from Usr_Incoming_Cheque_Details where /*id = 130212*/ BACS_Number = 1392




Select top 100 *,Client_Credit, Transaction_no from AC_client_ledger_transactions


select Count(1) from Usr_Incoming_Cheque_Details where BACS_Number is not null and in_progress = 1

select * from Usr_Incoming_Cheque_Details where BACS_YN = 'Y'

select * from Usr_Incoming_Cheque_Details where Entityref = 'LYN000000001146' and MatterNo = 1

Select * from AC_client_ledger_transactions where Client_Code = 'TES000000001253' and Matter_No = 1002


--update Usr_Incoming_Cheque_Details set 
--EntityRef = 'TES000000001253',matterno = 1002,cheque_number = NULL,BACS_Number = 1392, In_Progress = 0 where  id = 130211

delete from Usr_Incoming_Cheque_Details where id in(130211,130225,130234)

select cast(BACS_Number as varchar) + ' - ' + 'Amount £' + cast(Amount AS Varchar) from Usr_Incoming_Cheque_Details where BACS_Number is not null and entityref = 'TES000000001253' and matterno = 1002 and in_progress = 0

select top 10 * from Usr_cheques_in_client_tab_srs

select * from users where code = 'JJH'

select * from Usr_cheques_in_client_tab_srs where cheque_number = 19427486
select * from Usr_cheques_in_client_tab_srs where entityref = 'TES000000001253' and matterno = 1002

select * from Usr_cheques_in_office_tab_srs where chequenumber = 19427486
select * from Usr_cheques_in_client_tab_srs where entityref = 'TES000000001253' and matterno = 1002

select cheque_number,* from Usr_cheques_in_client_tab_srs where id = 108213
select cheque_number,* from Usr_cheques_in_client_tab_srs where id = 108214
update Usr_cheques_in_client_tab_srs set cheque_number = 19427486 where id = 108213

select distinct ID,RIGHT('00000'+ CONVERT(VARCHAR,Cheque_Number),10) AS cheque_number, * 
from Usr_cheques_in_client_tab_srs 
where EntityRef = 'TES000000001253' 
and MatterNo = 2 
AND Processed = 0 and funds_allocated = 0.00


-->>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-- Get Gerneral Parameters query
DECLARE @x XML


SELECT @x = ParamData 
	FROM usr_XML_General_Parameters_srs
	WHERE EntityRef = 'MAG000000001020'
	AND MatterNo = 1
	AND ProcessID = 1
select @x

-- Reset General Parameters
DECLARE @RC int 
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'CHQID',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'CHQNUM',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'TABMODE',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'SCREENEDITMODE',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'CHEQUENO',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'ENCCHQEXITSTATE',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'TABEXITSTATE',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'CTOFLAG',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'EXITSTATE',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'CONFEXITSTATE',''
EXECUTE @RC = dbo.sr_proc_Set_General_Parameters 'GRU000000000349',1,1,'CTOID',''


-- Client Ledger
select * from Ac_Client_Ledger_Transactions WHERE Client_Code = 'SAN000000003178' AND Matter_No = 1


-- Cheques Table
select * from Usr_Incoming_Cheque_Details  where Entityref = 'SAN000000003178' and MatterNo = 1
-- Client Table
select * from usr_cheques_in_client_tab_srs  where Entityref = 'SAN000000003178' and MatterNo = 1
-- Office Table
select * from usr_cheques_in_office_tab_srs  where Entityref = 'SAN000000003178' and MatterNo = 1


-----------------------------------------------------------------------------------------------------------------
-- MY FILE
-- Client Ledger
select * from Ac_Client_Ledger_Transactions WHERE Client_Code = 'TES000000001253' AND Matter_No = 3 and client_credit > 0.00


-- Cheques Table
select * from Usr_Incoming_Cheque_Details  where Entityref = 'TES000000001253' and MatterNo = 3
-- Client Table
select * from usr_cheques_in_client_tab_srs  where Entityref = 'TES000000001253' and MatterNo = 3
-- Office Table
select * from usr_cheques_in_office_tab_srs  where Entityref = 'TES000000001253' and MatterNo = 3

-------------------------------------------------------------------------------------------------------------------


update Usr_Incoming_Cheque_Details set Cheque_Status = 0, processed_YN = 'N', In_Progress = 0  where id in(130686,
130687,
130688,
130696,
130697,
130698,
130714,
130715,
130700,
130702,
130699)

update Usr_Incoming_Cheque_Details set Cheque_Number = BACS_Number where BACS_YN = 'Y'
update Usr_Incoming_Cheque_Details set BACS_Number = NULL where BACS_YN = 'Y'

update usr_cheques_in_client_tab_srs set CTO_Flag = 3 where id = 108890



select * from usr_cheques_in_client_tab_srs where cheque_number = 109004 

select count(*) from Usr_cheques_in_client_tab_srs where EntityRef='TES000000001253' and matterno = 1200 and (Processed=0 AND funds_allocated=0)

/* Reset
delete from Usr_Incoming_Cheque_Details  where Entityref = 'SAN000000003178' and MatterNo = 1
delete from usr_cheques_in_client_tab_srs  where Entityref = 'SAN000000003178' and MatterNo = 1
delete from usr_cheques_in_office_tab_srs  where Entityref = 'SAN000000003178' and MatterNo = 1
*/

/* Reset MY FILE ----------------------------------------------------------------------------------------------
delete from Usr_Incoming_Cheque_Details  where Entityref = 'TES000000001253' and MatterNo = 3
delete from usr_cheques_in_client_tab_srs where Entityref = 'TES000000001253' and MatterNo = 3
delete from usr_cheques_in_office_tab_srs where Entityref = 'TES000000001253' and MatterNo = 3
--------------------------------------------------------------------------------------------------------------*/

delete from Usr_Incoming_Cheque_Details WHERE id in(130717,
130718,
130719,
130720)



update Usr_Incoming_Cheque_Details set BACS_Number = NULL