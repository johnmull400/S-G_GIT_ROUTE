


-- Unite
select code, legalname from entities 
where legalname like 'Unite%' and legalname not like '%United%'  


-- GMB
select code, legalname from entities 
where legalname like 'GMB%' 