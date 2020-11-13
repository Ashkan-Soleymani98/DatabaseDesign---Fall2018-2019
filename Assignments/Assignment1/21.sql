
SELECT SOUNDEX(X.Name), X.Name
FROM world.country X
ORDER BY SOUNDEX(X.Name), X.Name DESC;