
-- Read the case refs into a temp table
SELECT [dbo].[sr_ShortTOLongEntityRef](r)EntityRef INTO #temp FROM(
       values

('SHE2776'),('BRY472'),('SCO1305'),('ASH1509'),('DON874'),('LAW1053'),('KIG14'),('KEL1763'),('LIT478'),('STA5488'),('CAM1742'),('STE3463'),
('CAR3989'),('GOD679'),('SAL1426'),('GRA2236'),('WOO2664'),('HUL485'),('LIS652'),('COT390'),('THO4786'),('KIR831'),('MOR4608'),('SMI7001'),
('OWU32'),('LEE1493'),('GAT363'),('EAG127'),('POR595'),('TAI124'),('VOU8'),('RIC2101'),('REY349'),('PRI2823'),('AHM1651'),('BRA4127'),('HAN1339'),
('LEW1017'),('JAM1890'),('BRO3872'),('FLA234'),('BLA1762'),('WEE112'),('COG174'),('JAR422'),('WIL6556'),('MOR3324'),('BUR3167')
)r(r)


-- update the cases

update usr_key_data_srs set lvpi_case = 'N',date_case_exits_lvpi = getdate(),reason_for_lvpi_exit = 113  
where entityref in(select * from #temp) and matterno = 1