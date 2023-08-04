--What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT
    t.trainerID AS 'ID',
    t.trainername 'Trainer Name',
    p.name AS Pokemon
FROM trainers t
JOIN pokemon_trainer pt
ON t.trainerID=pt.trainerID
AND t.trainerID=303
JOIN pokemons p
ON pt.pokemon_id=p.id;