USE grapedb;

-- 1. SQL statement to return position of 'P' in 'Atlas Peak' appelation from the appellations table.
SELECT 
    grapedb.wine.Appelation,
    POSITION('P' IN Appelation) AS position_of_A
FROM
    grapedb.wine
WHERE
    grapedb.wine.Appelation LIKE "Atlas Peak";

-- 2. SQL statement to return the Grapes (only distinct values) from both the grapes and the wine table.
SELECT 
    grapedb.grapes.Grape
FROM
    grapedb.grapes
        LEFT JOIN
    grapedb.wine ON grapedb.grapes.ID = grapedb.wine.No;

-- 3. SQL statement to extract 4 characters from a Grapes name (starting from left) from the wine table.
SELECT 
    grapedb.wine.Grape, LEFT(grapedb.wine.Grape, 4) AS 4th_character_from_left
FROM
    grapedb.wine;

-- 4. SQL statement to select all the Grapes, which have No(NULL) Appelation.
SELECT 
    grapedb.grapes.Grape, grapedb.wine.Appelation
FROM
    grapedb.grapes
        LEFT JOIN
    grapedb.wine ON grapedb.grapes.ID = grapedb.wine.No;

-- 5. SQL statement lists the number of appelation for each grape.
SELECT 
    grapedb.wine.Grape,
    COUNT(grapedb.wine.Appelation) AS total_no_appelation_of_each_grape
FROM
    grapedb.wine
GROUP BY grapedb.wine.Grape;