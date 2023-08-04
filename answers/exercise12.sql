--How many pokemon only belong to one trainer and no other?
SELECT
    p.name 'Pokemon',
    Count(*) 'Trainer Count'
FROM pokemons p
JOIN pokemon_trainer pt
ON p.id=pt.pokemon_id
GROUP BY p.id
HAVING COUNT(*)=1;