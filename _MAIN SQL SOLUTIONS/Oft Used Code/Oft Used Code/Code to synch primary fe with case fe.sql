

begin tran
update kd set Primary_Fee_Earner = (m.feeearnerref+' '+(select FullName from users where users.Code = m.FeeEarnerRef) )
from Usr_Key_Data_srs kd 
inner join matters m on m.EntityRef = kd.entityref and m.Number = kd.MatterNo 
inner join users u on u.Code = m.FeeEarnerRef
where kd.entityref = 'TEST00000000000' and kd.matterno = 6

rollback
commit

