
--What are the return values of the COALESCE function?


if (select coalesce(max(NULLIF(ad.Street1,'')),max(NULLIF(ad.Street2,'')),max(NULLIF(ad.Street3,'')),max(NULLIF(ad.Town,'')),max(NULLIF(ad.County,'')),max(NULLIF(ad.postcode,''))) from std_addresses ad
inner join entities e on e.code = ad.entityRef
inner join std_mattercontacts mc on mc.ContactRef = e.Code  
where mc.entityref = 'dec000000000322' and matterno = 1 
and mc.entitytyperef = 37) is null select 2 else select 4

select top 2 * from entities where code = 'ADM000000000053'

select * from std_addresses where entityref = 'ADM000000000053'

select * from entitytypes where code = 37


select * from std_mattercontacts mc
where entityref = 'test00000000001' and matterno = 13 



select ad.Street1, ad.Street2, ad.Street3, ad.Town, ad.County from std_addresses ad
inner join entities e on e.code = ad.entityRef
inner join std_mattercontacts mc on mc.ContactRef = e.Code  
where mc.entityref = 'test00000000001' and matterno = 13 
and mc.entitytyperef = 37


select * from dbo.LR_EDRS_AdditionalAddresses


if coalesce(select NULLIF(ad.Street1,''),NULLIF(ad.Street2,''),NULLIF(ad.Street3,''),NULLIF(ad.Town,''),NULLIF(ad.County,''),NULLIF(ad.postcode,'')) from std_addresses ad
inner join entities e on e.code = ad.entityRef
inner join std_mattercontacts mc on mc.ContactRef = e.Code  
where mc.entityref = 'test00000000001' and matterno = 13 
and mc.entitytyperef = 37) = 0