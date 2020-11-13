SELECT Z.Name, Z.Population, Z.SurfaceArea
FROM world.country Z, world.country X
WHERE Z.Continent=X.Continent and Z.Population > X.Population and Z.SurfaceArea > X.SurfaceArea and X.Name='Iran'
ORDER BY Z.Population DESC;