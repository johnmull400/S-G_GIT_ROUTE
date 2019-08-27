


select introducer,BrandName,* from sr_IntroducerList il
inner join Usr_ATE_LookUp_srs atl on atl.id = il.ATE_ID
where introducer like 'RAC%' and ate_ID = 25


select * from Usr_ATE_LookUp_srs

select legalname,* from sr_IntroducerList il 
inner join entities e on e.code = il.Introducer
where introducer like 'RAC%' and ATE_ID = 25
order by introducer

SELECT * FROM Usr_ATE_Values_srs where ATEID = 17 order by Value_Set




SELECT * FROM Usr_ATE_Req_Values_srs

SELECT * FROM Usr_ATE_UnderWriter_srs

begin tran
update Usr_ATE_Values_srs set Value = 54.88 where id = 121
commit
--============================== Code from Mike ==================================================================
select  val.ateid,loo.ATEEntity, Description, val.Value, val.MT_Values, val.EL_Value, val.PL_Value, val.ID_Value 
from usr_ate_lookup_srs loo
inner join Usr_ATE_Values_srs val on loo.ATEValueID = val.ATEID
inner join Usr_ATE_Req_Values_srs req on val.ItemID = req.DescriptionID
inner join Usr_ATE_UnderWriter_srs un on loo.UnderWriter = un.ID
where loo.ATEEntity = 'ALL000000001547'
--==================================================================================================================
-- Insert new record set for Allianz
begin tran
--Line 1
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(1,NULL,10000,1,NULL,17,10000,10000,10000,NULL)
--Line 2
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(1,NULL,599.00,2,NULL,17,599.00,749.00,748.00,NULL)
--Line 3
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(1,NULL,35.94,3,NULL,17,35.94,44.94,44.94,NULL)
--Line 4
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(1,NULL,634.94,4,NULL,17,634.94,793.94,793.94,NULL)
--Line 5
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(2,NULL,599.00,5,NULL,17,92.00,NULL,NULL,NULL)
--Line 6
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(2,NULL,35.94,6,NULL,17,92.00,NULL,NULL,NULL)
--Line 7
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(2,NULL,634.94,7,NULL,17,97.52,NULL,NULL,NULL)
--Line 8
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(3,NULL,NULL,8,NULL,17,NULL,1687.98,1687.98,NULL)
--Line 9
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(3,NULL,NULL,9,NULL,17,NULL,101.27,101.27,NULL)
--Line 9
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(3,NULL,NULL,9,NULL,17,NULL,101.27,101.27,NULL)
--Line 10
INSERT INTO [dbo].[Usr_ATE_Values_srs]([Value_Set],[OldValue],[MT_Values],[ItemID],[DateChanged],[ATEID],[Value],[PL_Value],[EL_Value],[ID_Value])
VALUES(3,NULL,NULL,10,NULL,17,NULL,1789.25,1789.25,NULL)

SELECT * FROM Usr_ATE_Values_srs where ATEID = 17 order by Value_Set

Commit


