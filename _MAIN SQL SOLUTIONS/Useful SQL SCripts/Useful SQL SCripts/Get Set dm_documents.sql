
use partner

Select MainClassID, * from dm_documents where code = 11354
Select * from dm_documents where Name like '%case%retainer%'

Select * from dm_documents where Name like '%bankruptcy%'

use partner
Select name,* from dm_documents where CaseTypeGroupRef = 0

convert

select CONVERT(datetime, '2009/07/16 08:28:01')

begin tran
update dm_documents set EmailTemplate = '\\qls-lpl-fs01\Partner2\Template\15474.xml' where code = 15474

rollback 
commit 


begin tran
update dm_documents set SubClassID = 2 where code in(
7767,
8006,
8082,
8090,
8094,
8095,
8096,
8097,
8098,
8099,
8110,
8112,
8113,
8114,
8115,
8371,
8377,
8393,
8432,
8433,
8435,
8710,
8740,
8919,
8948,
8978,
8981,
8984,
9116,
9139,
9230,
9231,
9260,
9400,
9405,
9484,
9507,
9519,
9650,
9670,
14043,
14045,
14258,
14800,
14970,
15063,
15422,
15622,
15673,
15674,
15932,
15938)
