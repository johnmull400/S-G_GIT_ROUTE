-- Currently logged in users
SELECT UserRef, Description, CONVERT(VARCHAR(23), e.TimeStamp, 121) AS 'Time Stamp'
FROM Events e 
JOIN (SELECT TimeStamp  = MAX(TimeStamp)
FROM Events li 
WHERE li.Description = 'Login' AND 
li.TimeStamp >= DATEADD(DAY, -1, GETDATE())  AND 
NOT EXISTS 
(SELECT 1 
FROM Events lo 
WHERE lo.TimeStamp > li.TimeStamp AND 
li.UserRef = lo.UserRef AND lo.Description = 'Logout') 
GROUP BY UserRef) li ON 
e.TimeStamp = li.TimeStamp 
ORDER BY e.UserRef



