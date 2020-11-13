
SELECT *
FROM (SELECT Z.Continent, X.Language, ROUND(SUM(Z.Population*X.Percentage/100)) AS People_Speaking_Language
      FROM world.country Z, world.countrylanguage X
      WHERE Z.Code=X.CountryCode and X.IsOfficial<>TRUE
      GROUP BY  Z.Continent, X.Language) V
WHERE V.People_Speaking_Language = (SELECT MAX(K.People_Speaking_Language) FROM (SELECT B.Continent, ROUND(SUM(B.Population*N.Percentage/100)) AS People_Speaking_Language
                              FROM world.country B, world.countrylanguage N
                              WHERE B.Code=N.CountryCode and N.IsOfficial<>TRUE
                              GROUP BY  B.Continent, N.Language) K
                              WHERE V.Continent = K.Continent) ORDER BY V.People_Speaking_Language;