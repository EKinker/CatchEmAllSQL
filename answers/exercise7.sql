--What is Rufflet's secondary type?
SELECT p.id ID, p.name 'Name', t.name 'Secondary Type'
FROM pokemons p
Join types t
WHERE p.secondary_type=t.id
AND p.name = 'Rufflet';