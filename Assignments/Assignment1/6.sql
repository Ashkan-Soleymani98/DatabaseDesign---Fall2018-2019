SELECT DISTINCT District
FROM world.city AS Z
GROUP BY District
HAVING (SUM(Z.Population) > (SELECT MAX(V.Population) FROM (SELECT Population FROM world.country AS X ORDER BY X.Population ASC LIMIT 15 ) AS V))
ORDER BY District;