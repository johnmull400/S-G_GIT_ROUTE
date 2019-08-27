begin tran
--commit
USE [Partner]
GO

INSERT INTO [dbo].[std_MatterContacts]
           ([EntityRef]
           ,[MatterNo]
           ,[ContactRef]
           ,[AddressID]
           ,[TelephoneID]
           ,[EmailID]
           ,[Description]
           ,[EntityTypeRef]
           ,[Ref]
           ,[Self]
           ,[Salutation]
           ,[ParentId]
           ,[ParentInd]
           ,[FaxId]
           ,[InheritFromID]
           ,[PrivateNumber]
           ,[IncInheritedName]
           ,[Off_Panel])
     VALUES
           ('TES000000001253'
           ,1002
           ,'CDM000000000014'
           ,0
           ,0
           ,0
           ,''
           ,19
           ,''
           ,'N'
           ,''
           ,0
           ,'N'
           ,0
           ,0
           ,''
           ,'N'
           ,NULL)
GO


