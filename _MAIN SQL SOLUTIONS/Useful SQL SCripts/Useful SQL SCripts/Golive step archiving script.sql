select * from casetypegroups where name like '%archive%'


-- RTA 36
-- 14227	26	1	AN - Review File -Tranfer Part 8 - Part 7
-- 14242	26	1	TPIns - Enc Application to trans part 8 - part 7
-- 14252	26	1	Court - Consent Order transfer Part 8 to Part7
-- 14236	26	1	Client - Adv Stay lifted and transfer to Part 7
-- 14218	26	6	Case Step - Application move Part 8 - Part 7
-- 14228	26	1	AN - Review file Consider Directions
-- 14235	26	4	Court - N244 Application to trans part 8 - part 7
-- 14240	26	1	TPIns - Enc amended proceedings
-- 14232	26	1	Court - Enclosing Amended Proceedings
-- 14220	26	6	COURT DATE – Has Court resp to trans P8 to P7
-- 14234	26	1	Court - Enc Application to trans part 8 - part 7
-- 7735	    26	4	Court - N1 Claim Form Part 7
begin tran
update dm_documents set casetypegroupref = 36  where code 
in(14227,14242,14252,14236,14218,14228,14235,14240,14232,14220,14234,7735)	 
-- Select * from dm_documents where code in(14227,14242,14252,14236,14218,14228,14235,14240,14232,14220,14234,7735)	

rollback 
commit






--ELPL 38
-- 9946	28	4	Court - N1 Claim Form Part 7
begin tran
update dm_documents set casetypegroupref = 38  where code 
in(9946)	 
-- Select * from dm_documents where code in(9946)	

rollback 
commit 





--Global 39
-- 15679	0	8	COURT DATE - Review Stayed Proceedings
begin tran
update dm_documents set casetypegroupref = 39  where code 
in(15679)	 
-- Select * from dm_documents where code in(15679)	

rollback 
commit 



Select * from dm_documents where name in('AN - Review File -Tranfer Part 8 - Part 7'	
										 ,'TPIns - Enc Application to trans part 8 - part 7'
										 ,'Court - Consent Order transfer Part 8 to Part7'
										 ,'Client - Adv Stay lifted and transfer to Part 7'
										 ,'Case Step - Application move Part 8 - Part 7'
										 ,'AN - Review file Consider Directions'
										 ,'Court - N244 Application to trans part 8 - part 7'
										 ,'TPIns - Enc amended proceedings'
										 ,'Court - Enclosing Amended Proceedings'
										 ,'COURT DATE – Has Court resp to trans P8 to P7'
										 ,'Court - Enc Application to trans part 8 - part 7'
										 ,'Court - N1 Claim Form Part 7'
										 ,'COURT DATE - Review Stayed Proceedings'
										 ,'Case Step - Change of Fee Earner Trans Part 8 - Part 7'
										 ,'Court - N215 - Certificate of Service - Stays') order by name--order by casetypegroupref


										 Select * from dm_documents where name like '%N215%'