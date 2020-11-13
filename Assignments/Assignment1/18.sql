SELECT Z.Region, ROUND(AVG(Z.Population/Z.SurfaceArea), 3) AS Population_Density
FROM world.country Z
GROUP BY Z.Region
ORDER BY Population_Density DESC;