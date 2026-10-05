-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-blunder/problem?isFullScreen=true
-- Problem     The Blunder
-- Difficulty  Easy
-- Subdomain   Aggregation
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-10-05, 07:43 p.m.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT CAST(CEILING(
    AVG(CAST(Salary AS DECIMAL(18,4)))
  - AVG(CAST(REPLACE(CAST(Salary AS VARCHAR(20)), '0', '') AS DECIMAL(18,4)))
) AS INT)
FROM EMPLOYEES;
