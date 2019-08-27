select * from acplinvoices where TransactionNo = 20467831
select Office_Credit, * from View_Ac_Client_Ledger_Transactions
where entityref like 'TIC%214'


select Office_Credit,Disbursements, * from View_Ac_Client_Ledger_Transactions
where entityref like 'TIC%214'


select * from ac_disbursements d
inner join AcPLInvoices i on d.TransactionNo = i.TransactionNo
where ClientCode like 'TIC%214'


select (select sum(Office_Credit) from View_Ac_Client_Ledger_Transactions
where entityref like 'TIC%214') - (select totalamount from AcPLInvoices
where TransactionNo = 20467837)


select top 2 * from Usr_Incoming_Cheque_Details where entityref = 'TIC000000000214'

SELECT
				 cl.Posting_Type
				,cl.Client_Code
				,cl.Matter_No
				,cl.Transaction_No
				,cl.Disbursements
				,0.00
				-- strip out apostrophe from Narrative field as this causes problems with XAML form
				,REPLACE(cl.Narrative1, '''', '') as Narrative
				,COALESCE(inv.SupplierCode,'') as SupplierCode
				,0
				,330
				,176659 
			FROM  Ac_Client_Ledger_Transactions  cl 
			-- If the Disbursement is posted via ‘Direct Posting’ then it would not be recorded in AcPLInvoices table – an INNER JOIN would exclude those postings.
			-- Need to return all records even where there is no Supplier Code.
			LEFT OUTER JOIN AcPLInvoices AS inv ON inv.TransactionNo = cl.Transaction_No 
			WHERE cl.Client_Code = 'TIC000000000214' 
			AND cl.Matter_No = 1 
			--UPDATE 1.1 (Allow Negative entries)
			--AND cl.Disbursements > 0 
			-- Only want to show specific types of ledger entries
			AND (cl.Posting_Type = 'NYP'
				 OR cl.Posting_Type = 'DSO'
				 OR cl.Posting_Type = 'O/N'
				 OR cl.Posting_Type = 'OTC'
				 --OR cl.Posting_Type = 'CTO'
				)
