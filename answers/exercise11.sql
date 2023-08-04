--How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer
SELECT
    pt.trainerID 'Trainer ID',
    COUNT(*) 'Count'
FROM pokemon_trainer pt
WHERE pt.pokelevel >99
GROUP BY pt.trainerID;