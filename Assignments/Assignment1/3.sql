SELECT ROUND(SUM(Z.Population*100)/(SELECT SUM(V.Population) FROM world.country V), 5)
FROM world.country Z, world.countrylanguage X
WHERE X.CountryCode=Z.Code and X.IsOfficial=TRUE and X.Language='English';