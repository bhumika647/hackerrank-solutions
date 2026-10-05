-- ──────────────────────────────────────────────────
-- Link        https://www.hackerrank.com/challenges/the-company/problem?isFullScreen=true
-- Problem     New Companies
-- Difficulty  Medium
-- Subdomain   Advanced Select
-- Platform    HackerRank
-- Language    db2
-- Status      Accepted
-- Submitted   2026-10-05, 07:19 p.m.
-- ──────────────────────────────────────────────────


/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/SELECT
    c.company_code,
    c.founder,
    (SELECT COUNT(DISTINCT lead_manager_code)
       FROM Lead_Manager   WHERE company_code = c.company_code) AS total_lead_managers,
    (SELECT COUNT(DISTINCT senior_manager_code)
       FROM Senior_Manager WHERE company_code = c.company_code) AS total_senior_managers,
    (SELECT COUNT(DISTINCT manager_code)
       FROM Manager        WHERE company_code = c.company_code) AS total_managers,
    (SELECT COUNT(DISTINCT employee_code)
       FROM Employee       WHERE company_code = c.company_code) AS total_employees
FROM Company c
ORDER BY c.company_code;
