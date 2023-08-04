--What is each pokemon's primary type?
SELECT p.id AS ID, p.name AS Pokemon, t.name AS 'Primary Type'
FROM pokemons p
JOIN types t
WHERE p.primary_type=t.id;