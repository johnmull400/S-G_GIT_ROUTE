select mergedata,
REPLACE(mergedata,'case Step - close file','Case Step - Pre-Closure') as replaced

--CODE TO TEST FOR ALL OTHER (EXCEPT ULR) CLOSE FILE CALLS
from dm_answers
where mergedata like '%Take%case Step - close file%' 
and  mergedata not like '%case Step - Close file (re - closure)%'
and  mergedata not like '%case Step - Close file (SAM)%'
and  mergedata not like '%case Step - Close file (sc)%'

--CODE TO REPLACE "CASE STEP - CLOSE FILE" WITH "CASE STEP - PRE-CLOSURE" FOR ALL OTHER (EXCEPT ULR) CLOSE FILE CALLS
--begin tran
--update dm_answers
--set MergeData = REPLACE(mergedata,'case Step - close file','Case Step - Pre-Closure') 
--where mergedata like '%Take%case Step - close file%' 
--and  mergedata not like '%case Step - Close file (re - closure)%'
--and  mergedata not like '%case Step - Close file (SAM)%'
--and  mergedata not like '%case Step - Close file (sc)%'
--commit
--rollback

--CODE TO TEST FOR ULR CLOSE FILE CALLS
select mergedata,
REPLACE(mergedata,'case Step - close file (sc)','Case Step - Pre-Closure') as replaced
from dm_answers
where mergedata like '%Take%case Step - close file (sc)%' 
and  mergedata not like '%case Step - Close file (re - closure)%'
and  mergedata not like '%case Step - Close file (SAM)%'

-- CODE TO REPLACE "CASE STEP - CLOSE FILE" WITH "CASE STEP - PRE-CLOSURE" FOR ULR CLOSE FILE CALLS
--begin tran
--update Dm_Answers
--SET mergedata = REPLACE(mergedata,'case Step - close file (sc)','Case Step - Pre-Closure')
--where mergedata like '%Take%case Step - close file (sc)%' 
--and  mergedata not like '%case Step - Close file (re - closure)%'
--and  mergedata not like '%case Step - Close file (SAM)%'
--commit
--rollback







 

