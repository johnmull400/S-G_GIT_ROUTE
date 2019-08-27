
-- 1 Is the introducer AAH --------------------------------------------------------------------------------
INSERT INTO [Partner].[dbo].[Dm_Questions]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[QuestionText]
           ,[QuestionType]
           ,[QuestionNotes]
           ,[GotoQuestion]
           ,[MergeName]
           ,[FirstQuestion]
           ,[Mandatory]
           ,[msrepl_tran_version]
           ,[RangeSelect]
           ,[DefaultAnswer]
           ,[DataType]
           ,[GoToData]
           ,[Chain])
     VALUES
  /*change*/(8755,
           69,	
           'Is the introducer AAH',
           2,
           '',
           0,
           '',
           0,
           0,
           NEWID(),
           '',
           '',
           12,
           '',
           NULL)
           
INSERT INTO [Partner].[dbo].[Dm_Answers]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[AnswerNumber]
           ,[AnswerText]
           ,[GotoQuestion]
           ,[MergeName]
           ,[MergeData]
           ,[msrepl_tran_version]
           ,[GoToData])
     VALUES
/*change*/ (8755,
           69,
           1,
           'Is the introducer AAH',
           -3,
           '?.intro',
           '[sql: select introducer_group from usr_introducer_srs where entityref = ''[matters.entityref]'' and matterno = [matters.number] ]',
           newid(),
           '[sql: if ''[?.intro]'' = ''AAH000000000030'' select 20 else select 17]')        
           
           
 --2 Is this a minor case? ---------------------------------------------------------------------------------------------------
 
 INSERT INTO [Partner].[dbo].[Dm_Questions]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[QuestionText]
           ,[QuestionType]
           ,[QuestionNotes]
           ,[GotoQuestion]
           ,[MergeName]
           ,[FirstQuestion]
           ,[Mandatory]
           ,[msrepl_tran_version]
           ,[RangeSelect]
           ,[DefaultAnswer]
           ,[DataType]
           ,[GoToData]
           ,[Chain])
     VALUES
  /*change*/(8755,
           70,	
           'Is this a minor case?',
           2,
           '',
           0,
           '',
           0,
           0,
           NEWID(),
           '',
           '',
           12,
           '',
           NULL)
           
INSERT INTO [Partner].[dbo].[Dm_Answers]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[AnswerNumber]
           ,[AnswerText]
           ,[GotoQuestion]
           ,[MergeName]
           ,[MergeData]
           ,[msrepl_tran_version]
           ,[GoToData])
     VALUES
/*change*/ (8755,
           70,
           1,
           'Is this a minor case?',
           -3,
           '?.client_age',
           '[sql: select dbo.SR_GetClientAgeInYears(''[matters.entityref]'',[matters.number],getdate())]',
           newid(),
           '[sql: if [?.client_age] < 18 select 18 else select 21]')              
           
           

 --3 Please enter the Personal Injury (PI) amount of the client's settlement.---------------------------------------------------------------------------------------------------
 
 INSERT INTO [Partner].[dbo].[Dm_Questions]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[QuestionText]
           ,[QuestionType]
           ,[QuestionNotes]
           ,[GotoQuestion]
           ,[MergeName]
           ,[FirstQuestion]
           ,[Mandatory]
           ,[msrepl_tran_version]
           ,[RangeSelect]
           ,[DefaultAnswer]
           ,[DataType]
           ,[GoToData]
           ,[Chain])
     VALUES
  /*change*/(8755,
           71,	
           'Please enter the Personal Injury (PI) amount of the clients settlement.',
           0,
           'This required to calculate the fee for AAH cases',
           30,
           '?.PI_value',
           0,
           0,
           NEWID(),
           '',
           '',
           99,
           '',
           NULL)
           
-- 4 Is the PI value < 1500 (AAH only test) -------------------------------------------------------------------------------------------------------------
 INSERT INTO [Partner].[dbo].[Dm_Questions]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[QuestionText]
           ,[QuestionType]
           ,[QuestionNotes]
           ,[GotoQuestion]
           ,[MergeName]
           ,[FirstQuestion]
           ,[Mandatory]
           ,[msrepl_tran_version]
           ,[RangeSelect]
           ,[DefaultAnswer]
           ,[DataType]
           ,[GoToData]
           ,[Chain])
     VALUES
  /*change*/(8755,
           72,	
           'Is the PI value < 1500 (AAH only test)',
           2,
           '',
           0,
           '',
           0,
           0,
           NEWID(),
           '',
           '',
           12,
           '',
           NULL)
           
INSERT INTO [Partner].[dbo].[Dm_Answers]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[AnswerNumber]
           ,[AnswerText]
           ,[GotoQuestion]
           ,[MergeName]
           ,[MergeData]
           ,[msrepl_tran_version]
           ,[GoToData])
     VALUES
/*change*/ (8755,
           72,
           1,
           'Is the PI value < 1500 (AAH only test)',
           -3,
           'exec:22',
           '',
           newid(),
           '[sql: if [?.PI_value] < 1500 select 17 else select 23]')  
           

-- 5 Calculate AAH fee -------------------------------------------------------------------------------------------------------------
 INSERT INTO [Partner].[dbo].[Dm_Questions]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[QuestionText]
           ,[QuestionType]
           ,[QuestionNotes]
           ,[GotoQuestion]
           ,[MergeName]
           ,[FirstQuestion]
           ,[Mandatory]
           ,[msrepl_tran_version]
           ,[RangeSelect]
           ,[DefaultAnswer]
           ,[DataType]
           ,[GoToData]
           ,[Chain])
     VALUES
  /*change*/(8755,
           73,	
           'Calculate AAH fee',
           2,
           '',
           0,
           '',
           0,
           0,
           NEWID(),
           '',
           '',
           12,
           '',
           NULL)
           
INSERT INTO [Partner].[dbo].[Dm_Answers]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[AnswerNumber]
           ,[AnswerText]
           ,[GotoQuestion]
           ,[MergeName]
           ,[MergeData]
           ,[msrepl_tran_version]
           ,[GoToData])
     VALUES
/*change*/ (8755,
           73,
           1,
           'Calculate AAH fee',
           0,
           '?.AAH_fee',
           '[sql: select dbo.sr_fn_Calculate_AAH_Value([?.PI_value])]',
           newid(),
           '')  
           
           
 --6 ---------------------------------------------------------------------------------------------------
 
 INSERT INTO [Partner].[dbo].[Dm_Questions]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[QuestionText]
           ,[QuestionType]
           ,[QuestionNotes]
           ,[GotoQuestion]
           ,[MergeName]
           ,[FirstQuestion]
           ,[Mandatory]
           ,[msrepl_tran_version]
           ,[RangeSelect]
           ,[DefaultAnswer]
           ,[DataType]
           ,[GoToData]
           ,[Chain])
     VALUES
  /*change*/(8755,
           75,	
           'Bring in AAH para',
           2,
           '',
           0,
           '',
           0,
           0,
           NEWID(),
           '',
           '',
           12,
           '',
           NULL)
           
INSERT INTO [Partner].[dbo].[Dm_Answers]
           ([DocumentCode]
           ,[QuestionNumber]
           ,[AnswerNumber]
           ,[AnswerText]
           ,[GotoQuestion]
           ,[MergeName]
           ,[MergeData]
           ,[msrepl_tran_version]
           ,[GoToData])
     VALUES
/*change*/ (8755,
           75,
           1,
           'Bring in AAH para',
           0,
           '?.AAH_para',
           '[SQL: select dbo.sr_fn_Get_AAH_Wording_srs(4)]',
           newid(),
           '')              
           
           
  -- Link up questiopns and answers
  -- Set the wording type in Q 'Bring in AAH para' 
  -- Set 'Is the introducer AAH' as fisrt question
  -- Put merge code into letter       
           
           
                      

select * from Dm_Questions where DocumentCode = 10810

select * from Dm_Answers where DocumentCode = 10810

select * from Dm_documents where Code = 8755

select * from Dm_documents where Name = 'Client - Confirming Instructions - Items of claim' 

