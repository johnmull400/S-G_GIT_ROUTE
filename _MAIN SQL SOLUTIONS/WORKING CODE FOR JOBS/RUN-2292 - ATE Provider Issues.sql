

-- This code joins the two tables sr_introducerlist and Usr_ATE_LookUp_srs
-- I have noticed that Allianz Usr_ATE_LookUp_srs ID 27 are not on the introducer list table.
select il.introducer as IL_introducer,il.ATE_ID as IL_ATE_ID, atelu.BrandName, atelu.ATEEntity from sr_IntroducerList il 
inner join Usr_ATE_LookUp_srs atelu  on atelu.ID = il.ATE_ID

