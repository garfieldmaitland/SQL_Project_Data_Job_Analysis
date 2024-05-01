-- SELECT job_posted_date
-- FROM job_postings_fact
-- LIMIT 10;

/*
SELECT
    '2023-02-19'::DATE,
    '123'::INTEGER,
    'true'::BOOLEAN,
    '3.14'::REAL;

SELECT
    job_title_short AS title,
    job_location AS location,
    -- job_posted_date AS date_time
    job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
    EXTRACT(MONTH FROM job_posted_date) AS date_month,
    EXTRACT(YEAR FROM job_posted_date) AS date_year
FROM
    job_postings_fact
LIMIT 5;
*/

SELECT
    COUNT(job_id) AS "Data Engineer", --job_posted_count,
    COUNT(job_id) AS "Data Analyst",
    EXTRACT(MONTH FROM job_posted_date) AS month 
FROM
    job_postings_fact AS "Optimal Month to Apply for a Data Engineer Job"
WHERE
  job_title_short = 'Data Engineer'
  job_title_short = 'Data Analyst'
GROUP BY
    month
ORDER BY
    "Data Engineer" DESC 
-- LIMIT 50;