
       
	   -- This code does not seem to work when I run it, though it seems to work for everyone else
	   
	   declare @u varchar(12) = 'JJH'
       declare @p varchar(100) = '���8�_h_]�t=M�]`g'
       
	   update  users set locked = 0  where code = @u
       update dbo.users 
       set           password2 = @p, 
	                 password = @p          
       where  code = @u
       
       select u.password2, u.locked, * 
       from   dbo.users u 
       where  u.code = @u

       -- ��!�_Y��<�܋__�        --     Monday001
       -- ���8�_h_]�t=M�]`g --     Tuesday001
       -- �_�O=@<jT__�`���# --     Wednesday001
       -- q�+_t�a���(�_T  --     Thursday001
       -- 7��YN�"��=MT�4�_ --     Friday001

       -- X56�C�_��__I_k_�        --     Password001


	   