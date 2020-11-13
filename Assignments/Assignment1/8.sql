SELECT X.District
FROM (SELECT *
      FROM world.city Z
      WHERE Z.District IN (SELECT B.District FROM world.country V, world.city B WHERE V.Capital=B.ID)
      GROUP BY Z.District
      HAVING SUM(Z.Population) > (SELECT SUM((N.Percentage * M.Population)/100)FROM world.countrylanguage N, world.country M WHERE N.CountryCode=M.Code and N.CountryCode=Z.CountryCode and N.IsOfficial=TRUE GROUP BY N.CountryCode)) X
ORDER BY X.District;