
declare @pi_ammount int
declare @age smallint = 45
declare @dbloss varchar(6) = 'AgeTo'
declare @severity varchar(8) = 'Moderate'
declare @tmpSelect varchar(max)

--select * from NIHL_Quantum_Calculator_dB where agefrom >= @age and ageto <= @age
--select [] from NIHL_Quantum_Calculator_dB 

set @tmpSelect = 'select ' + @dbloss + ' from NIHL_Quantum_Calculator_dB where agefrom = ' + cast(@age as varchar(4))
exec (@tmpSelect)
select @dbloss from NIHL_Quantum_Calculator_dB where agefrom = @age


select (@dbloss) from NIHL_Quantum_Calculator_dB where agefrom = @age
set @pi_ammount = ((select sqlstring)) 
select @pi_ammount


select * from NIHL_Quantum_Calculator_dB

