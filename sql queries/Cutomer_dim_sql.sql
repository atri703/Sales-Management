SELECT 
		c.CustomerKey AS CustomerKey 
--      ,[GeographyKey]
--      ,[CustomerAlternateKey]
--      ,[Title]
      ,c.FirstName As FirstName
--      ,[MiddleName]
      ,c.LastName AS LastName
	  ,c.FirstName + ' ' + c.LastName AS FullName
--      ,[NameStyle]
--      ,[BirthDate]
--      ,[MaritalStatus]
--      ,[Suffix]
      ,Case c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
--      ,[EmailAddress]
--      ,[YearlyIncome]
--      ,[TotalChildren]
--      ,[NumberChildrenAtHome]
--      ,[EnglishEducation]
--      ,[SpanishEducation]
--      ,[FrenchEducation]
--      ,[EnglishOccupation]
--      ,[SpanishOccupation]
--      ,[FrenchOccupation]
--      ,[HouseOwnerFlag]
--      ,[NumberCarsOwned]
--      ,[AddressLine1]
--      ,[AddressLine2]
--      ,[Phone]
      ,c.DateFirstPurchase AS DateFirstPurchase 
--      ,[CommuteDistance]
		,g.City AS City
  FROM 
	[AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
	LEFT JOIN 
	[AdventureWorksDW2019].[dbo].[DimGeography] AS g 
	ON c.GeographyKey = g.GeographyKey
  ORDER BY 
	CustomerKey ASC -- Sorting list by CustomerKey
