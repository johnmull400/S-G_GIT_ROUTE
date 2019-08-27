

-- This code needs amending to test for inserted m.casetypegroupref before assigning the Partner to the case
-- The breakdown of partners by case is: 
-- FT ULR 416 491 492 493 494 506 = Paul Williams
-- MT 496 607 608 = Patrick McGuire
-- ELPL = Helen Goodfellow
-- Else = MJA

select * from users where FullName = 'Helen Goodfellow'
select * from UserTypes
update users set UsertypeRef = 1 where code = 'HLG'
select * from users where usertyperef = 1


-- ?? This one doesn't work - see version 2 
if m.casetyperef in(416, 491, 492, 493, 494, 506)
   update m set m.[PartnerRef]='PAW'
	from inserted ins inner join Matters m on m.EntityRef=ins.EntityRef and m.Number=ins.Number

else if m.casetyperef in(496, 607, 608)
   update m set m.[PartnerRef]='PTM'
	from inserted ins inner join Matters m on m.EntityRef=ins.EntityRef and m.Number=ins.Number

else if m.casetyperef in(601,602,603,604,605)
   update m set m.[PartnerRef]='HLG'
	from inserted ins inner join Matters m on m.EntityRef=ins.EntityRef and m.Number=ins.Number

else
update m set m.[PartnerRef]='MJA'
	from inserted ins inner join Matters m on m.EntityRef=ins.EntityRef and m.Number=ins.Number





-- version 2 the one actually used in the trigger.
update m set m.partnerref =	CASE WHEN m.CaseTypeRef in(416, 491, 492, 493, 494, 506) THEN 'PAW'
							   WHEN m.casetyperef in(496, 607, 608) THEN 'PTM'
							   WHEN m.casetyperef in(601,602,603,604,605) THEN 'HLG'
							   ELSE 'MJA'
							END
						   ,m.ClientBankRef=33,m.OfficeBankRef=32
	from inserted ins inner join Matters m on m.EntityRef=ins.EntityRef and m.Number=ins.Number
	where (ins.LockID is null or ins.LockID=0)
