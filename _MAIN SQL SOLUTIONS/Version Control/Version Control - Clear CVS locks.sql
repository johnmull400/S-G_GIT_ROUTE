

-- Clear the version control locks from the cm_steps table
SELECT TOP 1 [CVSLockUser] FROM Cm_Steps WHERE [CVSLockUser] = 'DVE' 
update Cm_Steps set [CVSLockUser] = null where itemid = 2335248 



SELECT itemid ,[CVSLockUser] FROM Cm_Steps where isnull(cvslockuser,'') <> ''
 
