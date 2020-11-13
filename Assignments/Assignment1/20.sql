SELECT ROUND(Z.GNP/Z.Population, 3) AS Average_Income
FROM world.country Z
WHERE Z.HeadOfState LIKE '%Khatami%' and Z.Name='Iran';
