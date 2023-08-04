--What are all the primary types and how many pokemon have that type?
SELECT
    t.name 'Primary Types',
    COUNT(*) 'Count'
FROM pokemons p
JOIN types t
ON p.primary_type=t.id
GROUP BY p.primary_type;