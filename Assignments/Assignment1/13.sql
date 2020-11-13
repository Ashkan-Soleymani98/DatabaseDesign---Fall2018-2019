SELECT Z.Name
FROM world.country Z
WHERE NOT (EXISTS(SELECT * FROM world.countrylanguage X WHERE X.CountryCode=Z.Code AND X.IsOfficial=TRUE))
ORDER BY Z.Name;