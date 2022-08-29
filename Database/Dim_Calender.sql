-- Cleansed Dim_DateTable --
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
      -- ,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
      -- ,[SpanishDayNameOfWeek]
      -- ,[FrenchDayNameOfWeek]
      -- ,[DayNumberOfMonth]
      -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WeekNo
      ,[EnglishMonthName] AS Month,
	  LEFT([EnglishMonthName], 3) AS MonthShort -- Useful for frontend date Navigation and frontend graphs
      -- ,[SpanishMonthName]
      -- ,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MonthNo
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
      -- ,[CalendarSemester]
      -- ,[FiscalQuarter]
      -- ,[FiscalYear]
      -- ,[FiscalSemester]
  FROM [dbo].[DimDate] WHERE CalendarYear >= 2019