-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-2/problem?isFullScreen=true
-- Problem     Weather Observation Station 2
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-10-06, 11:36 a.m.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT TRIM(CHAR(CAST(ROUND(SUM(LAT_N), 2) AS DECIMAL(15,2)))) || ' ' ||
       TRIM(CHAR(CAST(ROUND(SUM(LONG_W), 2) AS DECIMAL(15,2))))
FROM STATION;
