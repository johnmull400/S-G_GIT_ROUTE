


insert into std_mattercontacts ( entityref, matterno, contactref, entitytyperef, addressid) 
select 'HIL000000001101',1, 'MIB000000000001', 54, id from std_addresses where entityref = 'MIB000000000001' and description = 'Main'


