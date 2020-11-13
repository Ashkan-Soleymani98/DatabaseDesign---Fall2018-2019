
SELECT Z.District
FROM world.city AS Z
WHERE NOT (Z.District IN (SELECT V.District FROM world.country AS X, world.city AS V WHERE X.Capital=V.ID))
GROUP BY Z.District
ORDER BY SUM(Z.Population) DESC
LIMIT 1;