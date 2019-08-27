







select  samaction , * from dm_documents where SAMAction <> 0 and documenttype in(6,8)


select name , * from dm_answers a 
inner join dm_documents d on d.code = a.documentcode 
where mergedata like '%TPINS -%INSERT%'  and casetypegroupref <> 4 and  d.SAMAction > 0


select * from dm_documents where name like 'WIT%-%' and casetypegroupref = 26



[insert:'Date - TP chase for address (LVPI)', ASSIGNTO=[sql: declare @return as varchar(100) EXEC dbo.auto_alloc_cmd '[matters.entityref]', [matters.number],10,'[matters.feeearnerref]', @return output select @return], DUEDATE=[date([today],+0d):d8],INSERT=END]
[take:'TPIns - Requesting address of TPO (LVPI-PM)', AGENDA='\Uploads', INSERT=END]

[insert:'Date - TP chase for address (LVPI)',ASSIGNTO=[sql: declare @return as varchar(100) EXEC dbo.auto_alloc_cmd '[matters.entityref]', [matters.number],10,'[matters.feeearnerref]', @return output select @return], DUEDATE=[date([today],+0d):d8],INSERT=END][take:'TPIns - Requesting address of TPD (LVPI-PM)', AGENDA='\Uploads',INSERT=END]