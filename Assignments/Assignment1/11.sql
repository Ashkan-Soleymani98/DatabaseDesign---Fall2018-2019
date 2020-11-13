SELECT Z.Name, COUNT(X.IsOfficial) AS Number_Of_Spoken_Languages
FROM world.country Z, world.countrylanguage X
WHERE Z.Code=X.CountryCode and Z.Code IN (SELECT V.CountryCode
FROM world.city V
WHERE V.Name='Victoria')
GROUP BY Z.Name
ORDER BY Number_Of_Spoken_Languages DESC;