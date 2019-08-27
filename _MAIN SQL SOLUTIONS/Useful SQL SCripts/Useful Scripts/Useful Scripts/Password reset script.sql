
       
	   -- This code does not seem to work when I run it, though it seems to work for everyone else
	   
	   declare @u varchar(12) = 'JJH'
       declare @p varchar(100) = 'ÍÞþ8±_h_]¸t=MÛ]`g'
       
	   update  users set locked = 0  where code = @u
       update dbo.users 
       set           password2 = @p, 
	                 password = @p          
       where  code = @u
       
       select u.password2, u.locked, * 
       from   dbo.users u 
       where  u.code = @u

       -- µ“!”_Y…Ï<šÜ‹__ú        --     Monday001
       -- ÍÞþ8±_h_]¸t=MÛ]`g --     Tuesday001
       -- §_‚O=@<jT__º`òÌö# --     Wednesday001
       -- q´+_t¯aÎÊò¾(î_T  --     Thursday001
       -- 7ñ¦éYNÓ"Óï=MTà4˜_ --     Friday001

       -- X56óC§_³«__I_k_Ó        --     Password001


	   