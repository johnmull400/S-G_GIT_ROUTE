
--MT
if (select @@SERVERNAME) != 'SGUK-TFP-PWS-02'
update matters set casetyperef = 496 where entityref = 'tes000000001253' and number = 1006
else select 'THIS IS THE LIVE SERVER!!!'
--ELPL
if (select @@SERVERNAME) != 'SGUK-TFP-PWS-02'
update matters set casetyperef = 602 where entityref = 'tes000000001253' and number = 1006
else select 'THIS IS THE LIVE SERVER!!!'
--FT
if (select @@SERVERNAME) != 'SGUK-TFP-PWS-02'
update matters set casetyperef = 491 where entityref = 'tes000000001253' and number = 1006
else select 'THIS IS THE LIVE SERVER!!!'


select * from CaseTypes

