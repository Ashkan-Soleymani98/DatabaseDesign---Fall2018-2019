SELECT DISTINCT X.Language
FROM world.country Z, world.countrylanguage X
WHERE Z.Code=X.CountryCode
GROUP BY X.Language
HAVING NOT (MAX(X.IsOfficial) = TRUE)
ORDER BY X.Language;