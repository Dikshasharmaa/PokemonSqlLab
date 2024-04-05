-- What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id;

--What is Rufflet's secondary type?
SELECT types.name FROM types INNER JOIN pokemons ON pokemons.secondary_type = types.id WHERE pokemons.name='Rufflet';

--What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT name from pokemons INNER JOIN pokemon_trainer ON pokemons.id = pokemon_trainer.pokemon_id WHERE pokemon_trainer.trainerID=303;

--How many pokemon have a secondary type Poison?
SELECT COUNT(*) from pokemons INNER JOIN types ON types.id = pokemons.secondary_type WHERE types.name='Poison';

--What are all the primary types and how many pokemon have that type?
SELECT types.name, count(pokemons.id) from pokemons LEFT JOIN types ON pokemons.primary_type = types.id GROUP BY types.name;

--How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer?
SELECT trainerID, count(*) FROM pokemon_trainer Where pokelevel=100 GROUP BY trainerID;

--How many pokemon only belong to one trainer and no other?
SELECT pokemon_id, count(*) FROM pokemon_trainer GROUP BY pokemon_id HAVING count(trainerID) =1;

