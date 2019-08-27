


-- Get the client name via matter contacts
select legalname from entities e
inner join std_MatterContacts mc on mc.ContactRef = e.Code
where mc.EntityRef = 'TES000000001253' and matterno = 1006 and
mc.EntityTypeRef in(1,72)


-- Get the defendant name via the client drill dowm for first defendant 
-- and std-mattercontacts through to entity for the legalname
select legalname from entities e
inner join std_MatterContacts mc on mc.ContactRef = e.Code
inner join Usr_TP_driver cl on cl.ContactId = mc.id
where mc.entityref = 'TES1253' and mc.MatterNo = 1006
and 



select * from Usr_Client_srs


select * from entitytypes where Description like 'Client%'