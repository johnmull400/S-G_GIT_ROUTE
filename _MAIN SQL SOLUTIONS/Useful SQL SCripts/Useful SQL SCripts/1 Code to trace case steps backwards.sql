use partner
select * from dm_documents where Name = 'COURT DATE - Notice of issue - Stay (LVPI)'

select * from dm_documents where name = 'CliDetailing offer (LVPI-PM)'


select  * from dm_questions where mergename = '?.aah_fee' and documentcode = 16047
select  * from dm_answers where mergename = '?.aah_fee' and documentcode = 16047


select * from dm_questions where (gotoquestion = 29 or gotodata like '%29%') and documentcode =  15722
select * from dm_answers where (gotoquestion = 29 or gotodata like '%29%') and documentcode =  15722


select  * from dm_questions where mergename = '?.reprecclient' 
select  * from dm_answers where mergename = '?.reprecclient' 

select name from dm_documents where code in (11353, 12271)


SELECT dbo.sr_fn_get_funding_contribution_value_srs('[matters.entityref]',[matters.number],[?.deduction])


select * from casetypes

select count(*) from Usr_Third_Party_el_pl where entityref = 'OBR000000000529' and matterno = 1 and defendant_in_proceedings = 'Y')



