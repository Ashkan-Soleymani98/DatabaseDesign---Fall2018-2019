      (SELECT Z.Language, ROUND(SUM(Z.Percentage/100 * X.Population)) AS Language_Population
FROM world.countrylanguage Z, world.country X
WHERE Z.CountryCode=X.Code
GROUP BY Language ORDER BY Language_Population DESC LIMIT 5) UNION
      (SELECT V.Language, ROUND(SUM(V.Percentage/100 * B.Population)) AS Language_Population
FROM world.countrylanguage V, world.country B
WHERE V.CountryCode=B.Code
GROUP BY Language ORDER BY Language_Population ASC LIMIT 5)
ORDER BY Language_Population DESC ;