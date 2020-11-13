SELECT Z.Name, Z.Population, Z.CountryCode
FROM world.city Z
WHERE Z.CountryCode IN (SELECT V.Code
FROM world.city X, world.country V
WHERE V.Code=X.CountryCode
GROUP BY V.Code
HAVING COUNT(*) < 3) and Z.Population = (SELECT MAX(N.Population)
FROM world.country B, world.city N
WHERE B.Code=N.CountryCode and Z.CountryCode=B.Code
GROUP BY B.Code)
ORDER BY Z.Population DESC;