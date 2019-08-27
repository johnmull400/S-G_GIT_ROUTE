
select * from Usr_Status_Lookup_srs

Update usr_key_data_srs set case_status = '5' where entityref = 'tes000000001253' and MatterNo = 2

select email from entities where code = 'jjh'


select u.EMailExternal from users u
inner join matters m on m.SupervisorRef = u.code
where m.entityref = 'tes000000001253' and number = 1002

select u.EMailExternal from users u
inner join matters m on m.SupervisorRef = u.code
where m.entityref = uks.entityref and number = uks.MatterNo

select top 2 * from matters

SELECT * FROM dbo.SR_Email_Messages where dTimeStamp > getdate() -1 order by nlID desc

delete from SR_Email_Messages where nlID in(334,333,332) tentityref = 'TES000000001253' and nlMatterNo = 2


INSERT INTO [dbo].[SR_Email_Messages]([tMessageType],[tEntityRef],[nlMatterNo],[tTo],[tCC],[tSubject]
           					,[tMessage],[tAttachments],[dTimeStamp],[lMessageSent],[nlStepID]
           					)
     						VALUES('AUDIT CODES','SHI000000000749',1,'Keith.Luxon@slatergordonsolutions.co.uk',NULL
           					,'Notification of Correspondence on Archive Matter - SHI000000000749.1'
           					,'We have received correspondence on this archived matter. Please review this to see whether the file requires reactivation.'
           					,NULL,GetDate(),0,NULL)

declare @entref varchar(15) = 'TES000000001253'
declare @matterno int = 2

INSERT INTO [dbo].[SR_Email_Messages]([tMessageType],[tEntityRef],[nlMatterNo],[tTo],[tCC],[tSubject]
           ,[tMessage],[tAttachments],[dTimeStamp],[lMessageSent],[nlStepID]
           )
     VALUES('AUDIT CODES','TES000000001253',2,'rachel.parsonage@slatergordonsolutions.co.uk','john.mulligan@slatergordonsolutions.co.uk'
           ,'Notification of Correspondence on Archive Matter - ' + @entref +'.'+ cast(@matterno AS varchar(1))
           ,'We have received correspondence on this archived matter. Please review this to see whether the file requires reactivation.'
           ,NULL,GetDate(),0,NULL
           )




