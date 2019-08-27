SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		John Mulligan
-- Create date: 01/03/2016
-- Description:	Returnes the Quantum value from the
-- NIHL Quantum Lookup tables
-- =============================================
ALTER PROCEDURE sr_proc_Get_NIHL_Quantum_Value_srs 
	@age smallint,
	@dbloss varchar(13),
	@severity varchar(8)
AS
BEGIN
	declare @pi_amount int
    declare @dBSelect varchar(max)
	declare @DB_LossStr varchar(13)

	-- Convert the dB los value input by the user into SQL friendly column names
	SELECT @DB_LossStr = 
CASE @dbloss
    when 'Up to 4dB Nil' then 'Up_to_db4_Nil'
	when '5dB' then 'db5'
	when '7.5dB' then 'db7_5'
	when '10dB' then 'db10'
	when '12.5dB' then 'db12_5'
	when '15dB' then 'db15'
	when '17.5dB' then 'db17_5'
	when '20dB' then 'db20'
	when '22.5dB' then 'db22_5'
	when '25dB' then 'db25'
	when '30dB+' then 'db30_plus'
END

	set @dBSelect = 'select ((select '+ @DB_LossStr +' from NIHL_Quantum_Calculator_dB where agefrom <='+ cast(@age as varchar(4)) +' and ageto >='+cast(@age as varchar(4))+') +
	(select ' + @severity + ' from NIHL_Quantum_Calculator_severity where agefrom <=' + cast(@age as varchar(4)) + 'and ageto >='+cast(@age as varchar(4))+'))'

	--set @pi_amount = exec(@dBSelect)
	exec(@dBSelect)


END
GO

