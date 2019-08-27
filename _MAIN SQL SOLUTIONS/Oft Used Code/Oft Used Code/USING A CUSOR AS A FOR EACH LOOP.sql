declare @UserId varchar(3)
declare @RowNum int = 0
declare @index smallint
declare UserList cursor for select Code from Users where Code='STI'
OPEN UserList
FETCH NEXT FROM UserList INTO @UserId
WHILE @@FETCH_STATUS = 0
       BEGIN
              set @index=1
              while @index < 15
                     begin
                           insert into SBTestTable (myid,mytext)
                           values (@index,@UserId)
                           set @index = @index + 1
                     end
              
              set @RowNum = @RowNum + 1
              --print cast(@RowNum as char(1)) + ' ' + @UserId
              FETCH NEXT FROM UserList INTO @UserId
       END
CLOSE UserList
DEALLOCATE UserList
