


	select department,* from users u
	inner join Usr_DepartmentCodes_srs dp on dp.Addresscode = u.department
	inner join Usr_DepartmentAddresses_srs da on da.id = dp.dcode
	where branch = 'Fareham' and u.userstatus = 0

	
