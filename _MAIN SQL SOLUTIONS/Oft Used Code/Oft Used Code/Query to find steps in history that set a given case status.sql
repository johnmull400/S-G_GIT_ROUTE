






select distinct ci.description from cm_caseitems ci
inner join cm_agendas ca on ca.itemid = ci.parentid
inner join dm_documents d on d.name = ci.description
inner join dm_answers a on a.documentcode = d.code
where entityref = 'bra000000000916' and matterno = 1 and mergedata like '%update usr_key_data_srs set case_status%=%3%'



