use partner


/*SELECT     Cm_Steps.SentDate, Usr_Case_Actions.EntityRef, Usr_Case_Actions.MatterNo, Usr_Case_Actions.[Action], 
                      Usr_Case_Actions.ActionDate, Usr_Case_Actions.CurrentUser, Usr_Case_Actions.itemid
FROM         Cm_CaseItems INNER JOIN
                      Cm_Agendas ON Cm_CaseItems.ParentID = Cm_Agendas.ItemID INNER JOIN
                      Cm_Steps ON Cm_CaseItems.ItemID = Cm_Steps.ItemID INNER JOIN
                      Usr_Case_Actions ON Cm_Agendas.EntityRef = Usr_Case_Actions.EntityRef AND Cm_Agendas.MatterNo = Usr_Case_Actions.MatterNo
WHERE     (NOT (Cm_Steps.SentDate IS NULL)) AND (Usr_Case_Actions.EntityRef = 'JON000000000570') AND (Usr_Case_Actions.MatterNo = 1)*/

use partner

select * from usr_case_actions where (Usr_Case_Actions.EntityRef = 'BIL000000000001') AND (Usr_Case_Actions.MatterNo = 1000) order by actiondate desc