USE [Partner]
GO

DECLARE @RC int
DECLARE @Entityref varchar(15)
DECLARE @matterno int
DECLARE @Desc varchar(100)
DECLARE @diary_date datetime

-- TODO: Set parameter values here.

EXECUTE @RC = [dbo].[sr_P_AddDateStep] 
   'TES000000001253'
  ,1
  ,'Date - Receipt of Medco communication'
  ,'2016-02-05 13:01:16.680'
GO

select * from Usr_Medco_Communication

