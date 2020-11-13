SELECT X.Name, Z.Name, Z.Population
FROM world.city Z, world.country X
WHERE Z.CountryCode=X.Code and Z.CountryCode IN (SELECT V.Code
                            FROM world.country V, world.countrylanguage B
                            WHERE B.CountryCode=V.Code and B.Language='English') and (SELECT COUNT(*) FROM world.city N WHERE Z.CountryCode=N.CountryCode and N.Population > Z.Population) = 4
ORDER BY Z.Population DESC ;