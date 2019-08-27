
Declare @RetVal INT
EXEC @RetVal = SR_p_MemoPosting @EntityRef = 'BOC000000000041', @MatterNo = 1, @Debit_Credit = 'D',  @NET = 220.00,  @CreatedBy = 'DBC', 
				@Narrative = 'General Practitioner Expert Decides ', @SupplierCode = 'MOB000000000018', @QtyOrdered = 1, @UnitPrice = 220.00, @FeeEarner = 'DBC'