
SELECT X.Name
FROM world.country Z, world.city X
WHERE Z.Capital<>X.ID and X.CountryCode=Z.Code 
ORDER BY X.Population DESC
LIMIT 1;