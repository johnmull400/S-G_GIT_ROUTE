




select type_of_proceedings, protective_proceedings_YN from usr_court_srs where entityref = 'test00000000000' and matterno = 4


select * from usr_ate_insurer_srs where entityref = 'test00000000000' and matterno = 4

delete from Usr_ATE_Insurer_srs where ID = 67


select * from Usr_ATE_LookUp_srs l 
inner join Usr_ATE_values_srs v on v.ID = l.ATEValueID 
where l.ATEEntity = 'BCR000000000010' and l.Staged_premiums = 'Y'

select * from Usr_ATE_values_srs 

select * from dbo.Usr_ATE_Req_Values_srs



select loo.ATEEntity, loo.BrandName, req.Description, val.Value, val.MT_Values, val.EL_Value, val.PL_Value 
from Usr_ATE_LookUp_srs loo
inner join Usr_ATE_Values_srs val on loo.ATEValueID = val.ATEID
inner join Usr_ATE_Req_Values_srs req on val.ItemID = req.DescriptionID
where loo.ATEEntity = 'BCR000000000010'
