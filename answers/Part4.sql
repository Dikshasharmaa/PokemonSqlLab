-- Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.
--You may interpret strongest in whatever way you want, but you will have to explain your decision.

SELECT pokemons.name AS pokemon_name,
trainers.trainername AS tname,
pokemon_trainer.pokelevel AS plevel,
ptype.name AS primary_type,
stype.name AS secondary_type
FROM pokemons JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id
JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
JOIN types AS ptype ON ptype.id=pokemons.primary_type
JOIN types AS stype ON stype.id=pokemons.secondary_type
ORDER BY plevel desc;



--Checking the winner n the basis of pokelevel