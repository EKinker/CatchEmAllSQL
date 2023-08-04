--How many pokemon have a secondary type `Poison`
SELECT COUNT(id) FROM pokemons p
WHERE p.secondary_type = (SELECT id FROM types WHERE name='Poison');