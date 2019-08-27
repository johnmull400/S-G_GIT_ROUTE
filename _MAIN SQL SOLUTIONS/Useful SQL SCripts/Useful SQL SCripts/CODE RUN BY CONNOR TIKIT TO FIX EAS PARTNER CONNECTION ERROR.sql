Select * from SystemSettingStrings where SSSection = 'EAS'

--update SystemSettingStrings set ssValue = '' where SSSection = 'EAS' and SSItem NOT IN ('CaseEnabled','Enabled')
--update SystemSettingStrings set ssValue = 0 where  SSSection = 'EAS' and SSitem = 'Enabled'