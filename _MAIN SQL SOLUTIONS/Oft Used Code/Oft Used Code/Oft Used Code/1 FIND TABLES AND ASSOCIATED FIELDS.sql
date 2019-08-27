

select 
    o.name,c.name 
    from sys.columns            c
        inner join sys.objects  o on c.object_id=o.object_id
        where c.name LIKE 'Controlling_fe%'
    order by o.name,c.column_id
