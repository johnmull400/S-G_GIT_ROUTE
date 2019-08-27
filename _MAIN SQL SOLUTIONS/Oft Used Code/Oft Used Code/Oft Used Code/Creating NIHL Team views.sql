CREATE VIEW viw_NIHL_Teams as
SELECT * FROM
(
       VALUES (1,0,'Assessment Team'),(2,1,'Post-Notification Team'),(3,2,'Litigation Team'),(4,3,'Pilot Team')
) YNOs(PartnerID,ID,Description)




CREATE VIEW viw_NIHL_Teams_Members as
SELECT * FROM
(
       VALUES (1,0,'Joann Liddy',0),(2,1,'Laura Lohk',0),(3,2,'Saimi Ohri',1),(4,3,'Lauren Parsons',1)
) YNOs(PartnerID,ID,Description,Team_Code)



 select * from viw_NIHL_Teams