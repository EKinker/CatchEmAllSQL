--Create a tabe with Pokemon Name, Trainer Name, Pokemon level, Primary & Secondary Types
--Sorted by highest level, then by highest attack, then by highest HP
SELECT
    p.name 'Pokemon Name',
    t.trainername 'Trainer Name',
    pt.pokelevel 'Pokemon Level',
    t1.name 'Primary Type',
    t2.name 'Secondary Type'
FROM pokemons p
LEFT JOIN pokemon_trainer pt ON pt.pokemon_id=p.id
LEFT JOIN trainers t ON t.trainerID=pt.trainerID
JOIN types t1 ON t1.id=p.primary_type
JOIN types t2 on t2.id=p.secondary_type
ORDER BY pt.pokelevel desc, pt.attack desc, pt.maxhp desc;
