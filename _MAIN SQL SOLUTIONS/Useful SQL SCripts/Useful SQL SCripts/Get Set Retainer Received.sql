


select Date_Retainer_Received,Retainer_Received, * from usr_key_data_srs where entityref = 'tin000000000819' and matterno = 1

update usr_key_data_srs set Retainer_Received = 'N' where id = 878386

update usr_key_data_srs set Retainer_Received = 'N', Date_Retainer_Received= NULL where entityref = 'TER000000001063' and matterno = 1
update usr_key_data_srs set Retainer_Received = 'N', Date_Retainer_Received= NULL where entityref = 'TER000000001064' and matterno = 1
update usr_key_data_srs set Retainer_Received = 'N', Date_Retainer_Received= NULL where entityref = 'TER000000001065' and matterno = 1