select entityref, matterno, from usr_client_srs cl
inner join usr_key_data_srs kd on kd.EntityRef = cl.EntityRef and kd.MatterNo = cl.MatterNo
where (select get)


USE [Partner]
GO

SELECT [dbo].[SR_GetClientAgeInYears] (
   <@e, varchar(15),>
  ,<@m, int,>
  ,<@t, smalldatetime,>)
GO

select top 10 * from cm_caseitems ci 
INNER JOIN Cm_Agendas ca ON ca.ItemID = ci.itemid
where Description like 'limitation%'

select ci.description,Date_of_Birth,Accident_Date, * from usr_client_srs cl
inner join usr_accident_details_srs ad on ad.EntityRef = cl.EntityRef and ad.MatterNo = cl.MatterNo
inner join usr_key_data_srs kd on kd.EntityRef = cl.EntityRef and kd.MatterNo = cl.MatterNo
INNER JOIN Cm_Agendas ca ON ca.EntityRef = kd.EntityRef and ca.MatterNo = kd.matterno
inner join Cm_CaseItems ci on ci.ItemID = ca.ItemID
where datediff(year,cl.Date_of_Birth, ad.Accident_Date) < 18
and datediff(year,cl.Date_of_Birth, kd.limitation_date) < 18
and kd.Case_Status not in(15)
and ad.Accident_Date != '1900-01-01 00:00:00.000'
and datediff(year,ad.Accident_Date, getdate()) <= 1
and ci.Description like 'Limitation%'



where datediff(year,cl.Date_of_Birth, ad.Accident_Date) < 18
and datediff(year,cl.Date_of_Birth, kd.limitation_date) < 18
and kd.Case_Status not in(15)
and ad.Accident_Date != '1900-01-01 00:00:00.000'
and datediff(year,ad.Accident_Date, getdate()) <= 1










-- These
select Date_of_Birth,Accident_Date, * from usr_client_srs cl
inner join usr_accident_details_srs ad on ad.EntityRef = cl.EntityRef and ad.MatterNo = cl.MatterNo
inner join usr_key_data_srs kd on kd.EntityRef = cl.EntityRef and kd.MatterNo = cl.MatterNo
where datediff(year,cl.Date_of_Birth, ad.Accident_Date) < 18
and datediff(year,cl.Date_of_Birth, kd.limitation_date) < 18
and kd.Case_Status not in(15)
and ad.Accident_Date != '1900-01-01 00:00:00.000'
and datediff(year,ad.Accident_Date, getdate()) <= 1

select count(1) from usr_client_srs cl
inner join usr_accident_details_srs ad on ad.EntityRef = cl.EntityRef and ad.MatterNo = cl.MatterNo
inner join usr_key_data_srs kd on kd.EntityRef = cl.EntityRef and kd.MatterNo = cl.MatterNo
where datediff(year,cl.Date_of_Birth, ad.Accident_Date) < 18
and datediff(year,cl.Date_of_Birth, kd.limitation_date) < 18
and kd.Case_Status not in(15)
and ad.Accident_Date != '1900-01-01 00:00:00.000'
and datediff(year,ad.Accident_Date, getdate()) <= 1

select * from Usr_Status_Lookup_srs





--testing agendas
SELECT    *
     FROM  Cm_Steps cs INNER JOIN
     Cm_CaseItems ci ON cs.ItemID = ci.ItemID INNER JOIN
     Cm_Agendas ca ON ci.ParentID = ca.ItemID
     WHERE  ca.EntityRef = 'wel000000002951'  AND ca.MatterNo = 1 AND 
     ci.Description = 'Date - 1 Months Until Limitation' and cs.diarydate is not NULL


	 select * from Cm_Agendas where entityref like 'WEL%2951' and matterno = 1

	 select * from Cm_Agendas where itemid = 178133773
	 select * from cm_caseitems where itemid = 178133773
	 select * from cm_caseitems where parentid = 178133773

	 select * from cm_caseitems where description = 'limitation dates' and itemID = 178133621



	 delete from Cm_CaseItems 
	 where itemid in(
	 178133619
	 ,178133632
	 ,178133652
	 ,178133669
	 ,178133686
	 ,178133703)