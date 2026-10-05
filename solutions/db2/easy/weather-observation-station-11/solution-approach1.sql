-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/weather-observation-station-11/problem?isFullScreen=true
-- Problem     Weather Observation Station 11
-- Difficulty  Easy
-- Subdomain   Basic Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-10-05, 02:54 p.m.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT distinct CITY FROM STATION WHERE (CITY NOT LIKE 'A%'AND CITY NOT LIKE 'E%'AND CITY NOT LIKE 'I%'AND CITY NOT LIKE 'O%'AND CITY NOT LIKE 'U%') or ( CITY NOT LIKE '%a'AND CITY NOT LIKE '%e'AND CITY NOT LIKE '%i'AND CITY NOT LIKE '%o'AND CITY NOT LIKE '%u');
