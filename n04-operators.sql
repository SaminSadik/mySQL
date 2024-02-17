USE dummyDB;
SELECT * FROM jobs;

SELECT  (max_salary-min_salary) AS subs,
        (max_salary/min_salary) AS divi,
        (max_salary%min_salary) AS remi -- AS changes original name with alias
FROM jobs WHERE (min_salary*2 <> 8000) AND (min_salary != 2000); 
-- arthmetic operation (+, -, *, /, %)
-- comparision operation (>,<,>=, <=, =, != or <>)
-- logical operation (AND, OR)

SELECT * FROM jobs
WHERE job_id='HR_REP' OR job_id='PR_REP' OR job_id='MK_REP'; -- not recommented
SELECT * FROM jobs
WHERE job_id IN('HR_REP', 'PR_REP', 'MK_REP'); -- multi-target with WHERE
SELECT * FROM jobs
WHERE job_id NOT IN('HR_REP', 'PR_REP', 'MK_REP'); -- multi-ignore with WHERE

SELECT * FROM jobs
WHERE job_id = 'P'; -- exact targetting
SELECT * FROM jobs
WHERE job_id LIKE 'P%'; -- tragetting same postfix
SELECT * FROM jobs
WHERE job_id LIKE '%P'; -- tragetting same prefix
SELECT * FROM jobs
WHERE job_id LIKE '%P%'; -- flexible targetting 
