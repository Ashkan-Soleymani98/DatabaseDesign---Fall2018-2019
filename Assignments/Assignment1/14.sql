
SELECT DISTINCT Z.Language
FROM world.countrylanguage Z
WHERE Z.Language NOT IN(SELECT X.Language FROM world.countrylanguage X WHERE X.IsOfficial=TRUE)
ORDER BY Z.Language;