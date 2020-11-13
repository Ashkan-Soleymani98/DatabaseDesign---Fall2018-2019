SELECT DISTINCT V.Language
FROM world.countrylanguage V
WHERE V.Language NOT IN (SELECT DISTINCT Z.Language
FROM world.countrylanguage Z
WHERE EXISTS(SELECT X.Language FROM world.countrylanguage X WHERE Z.Language=X.Language and X.IsOfficial=TRUE ))
ORDER BY V.Language;