SELECT X.CountryCode, X.Name, ROUND(X.Population/Z.Population, 5)*100
FROM world.country Z, world.city X
WHERE X.ID=Z.Capital
ORDER BY X.CountryCode DESC;