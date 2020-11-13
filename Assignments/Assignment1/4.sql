SELECT DISTINCT Z.Name
FROM world.country Z
WHERE Z.GovernmentForm LIKE '%Republic%' and Z.Code NOT IN(SELECT DISTINCT X.Code FROM world.country X, world.countrylanguage V WHERE X.Code=V.CountryCode and V.IsOfficial=TRUE and V.Percentage>=20) and Z.Code IN(SELECT DISTINCT B.CountryCode FROM world.countrylanguage B WHERE IsOfficial=TRUE)
ORDER BY Z.Name;