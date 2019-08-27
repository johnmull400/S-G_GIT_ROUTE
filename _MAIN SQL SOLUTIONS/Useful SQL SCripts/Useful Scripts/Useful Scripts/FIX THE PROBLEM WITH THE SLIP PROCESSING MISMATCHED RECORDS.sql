
/* This is a problem with the reference number allocation from the magic numbers table.
   What Tikit did on the call ref F0237008 - our ref RUNP4W-181 is to create a new set of numbers
   on the magic numbers table and then assign the new numbers to the duplicate slip processing records
*/


-- Find the slip processing duplicates
SELECT SlipNo, count(*) FROM Ac_Posting_Slips GROUP BY SlipNo
order by 2 desc

-- Update the magic numbers table to create some unused numbers
begin tran
	update Ac_Magic_Nos
	set Slip_No = Slip_No + 15
	where Slip_No = (select Slip_No from Ac_Magic_Nos)
rollback

--Assign a new slip number to one of the duplicates
begin tran
	update Ac_Posting_Slips set SlipNo = 1263053 where SlipNo = 1260490 and ID = 2481446
	update Ac_Posting_Slips set SlipNo = 1263052 where SlipNo = 1260433 and ID = 2481339
	update Ac_Posting_Slips set SlipNo = 1263051 where SlipNo = 1260424 and ID = 2481330
	update Ac_Posting_Slips set SlipNo = 1263050 where SlipNo = 1260318 and ID = 2481178
	update Ac_Posting_Slips set SlipNo = 1263049 where SlipNo = 1260225 and ID = 2481027
	update Ac_Posting_Slips set SlipNo = 1263048 where SlipNo = 1260126 and ID = 2480852
	update Ac_Posting_Slips set SlipNo = 1263047 where SlipNo = 1260117 and ID = 2480835
	update Ac_Posting_Slips set SlipNo = 1263046 where SlipNo = 1260109 and ID = 2480821
	update Ac_Posting_Slips set SlipNo = 1263045 where SlipNo = 1260103 and ID = 2480811
	update Ac_Posting_Slips set SlipNo = 1263044 where SlipNo = 1260098 and ID = 2480804
	update Ac_Posting_Slips set SlipNo = 1263043 where SlipNo = 1259907 and ID = 2480516
rollback



