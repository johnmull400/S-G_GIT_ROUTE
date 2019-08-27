

declare @return as money
declare @return2 as varchar(10)
declare @o_qStr as varchar(10)
exec sr_proc_Get_NIHL_Quantum_Value_srs 45,'12.5 dB','Moderate' ,0, @mon_Rtn_Val=@return OUTPUT,@chrRtn_val=@return2 OUTPUT,@qStr=@o_qStr OUTPUT select @return,@return2,@o_qStr