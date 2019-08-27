

declare @dstart datetime
declare @dend datetime

DECLARE @yy INT
DECLARE @mm INT
DECLARE @dd INT

DECLARE @getmm INT
DECLARE @getdd INT


set @dstart = getdate()
set @dend = '2017-11-29'


SET @yy = DATEDIFF(yy, @dstart, @dend)
SET @mm = DATEDIFF(mm, @dstart, @dend)
SET @dd = DATEDIFF(dd, @dstart, @dend)
SET @getmm = ABS(DATEDIFF(mm, DATEADD(yy, @yy, @dstart), @dend))
SET @getdd = ABS(DATEDIFF(dd, DATEADD(mm, DATEDIFF(mm, DATEADD(yy, @yy, @dstart), @dend), DATEADD(yy, @yy, @dstart)), @dend))

SELECT (
  Convert(varchar(10),@yy) + 'year ' + Convert(varchar(10),@getmm) + 'month '  + Convert(varchar(10),@getdd) + 'day '
)
