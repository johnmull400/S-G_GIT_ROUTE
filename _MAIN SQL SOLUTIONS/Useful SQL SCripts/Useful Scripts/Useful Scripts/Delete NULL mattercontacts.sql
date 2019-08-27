

select * from std_mattercontacts where entityref like 'JOH%11344' and matterno = 1 and contactref IS NULL

delete from std_MatterContacts where entityref like 'mod%470' and matterno = 1 and contactref IS NULL


select Client_Ac_Balance from matters where entityref = 'TES000000001253' and number = 1002


update matters set client_ac_balance = 3000.00 where entityref = 'TES000000001253' and number = 1002


select estimated_total_damages from Usr_Key_Data_srs


select @@version as 'sql server version'

select max(modify_date) from sys.objects


