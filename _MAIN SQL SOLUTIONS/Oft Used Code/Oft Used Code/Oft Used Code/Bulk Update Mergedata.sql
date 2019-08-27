select name,* from dm_answers 
inner join dm_documents on code = documentcode
where mergedata = '[sql: SELECT dbo.fn_Get_Defendant_String_srs(''[matters.entityref]'', [matters.number],0)]'


begin tran
update dm_answers set mergedata = (replace(mergedata,'[sql: SELECT dbo.fn_Get_Defendant_String_srs(''[matters.entityref]'', [matters.number])]',
                                   '[sql: SELECT dbo.fn_Get_Defendant_String_srs(''[matters.entityref]'', [matters.number],0)]')) 
where mergedata = '[sql: SELECT dbo.fn_Get_Defendant_String_srs(''[matters.entityref]'', [matters.number])]'
rollback
commit