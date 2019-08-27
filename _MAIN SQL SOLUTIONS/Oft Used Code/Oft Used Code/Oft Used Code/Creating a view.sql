CREATE VIEW viw_NIHL_Review_ReasonList as
SELECT * FROM
(
       VALUES (2,1,'Negotiate Only'),(3,2,'Close File'),(4,3,'Instruct Medical'),(5,4,'Request GP Records'),
           (6,5,'Transfer to Post-Notification Team'),(7,6,'Transfer to Assessment Team'),(8,7,'Transfer to Litigation Team'),
     (9,8,'Transfer to Pilot Team'),(10,9,'Issue Proceedings'),(11,10,'No Further Action')
) YNOs(PartnerID,ID,Description)