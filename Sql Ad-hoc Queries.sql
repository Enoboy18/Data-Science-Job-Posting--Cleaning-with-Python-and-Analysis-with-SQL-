SELECT * FROM output_file;

SELECT DISTINCT job_title AS unique_job_titles
FROM `glass_door_ds_postings`.`output_file`;

SELECT DISTINCT company_name AS total_companies_recorded 
FROM output_file;

SELECT job_title, COUNT(*) AS posting_count
FROM output_file
GROUP BY job_title
ORDER BY posting_count DESC;

SELECT company_name, COUNT(*) AS company_job_opening
FROM output_file
GROUP BY company_name
ORDER BY company_job_opening DESC;

SELECT location, COUNT(*) AS hot_job_markets
FROM output_file
GROUP BY location
ORDER BY hot_job_markets DESC;

SELECT size, COUNT(*) AS company_employee_size
FROM output_file
GROUP BY size
ORDER BY company_employee_size DESC;

SELECT industry, COUNT(*) AS industry_opening
FROM output_file
GROUP BY industry
ORDER BY industry_opening DESC;

SELECT sector, COUNT(*) AS sector_opening
FROM output_file
GROUP BY sector
ORDER BY sector_opening DESC;

SELECT AVG(rating) AS average_rating 
FROM output_file;

SELECT AVG(rating) / 5 * 100 AS average_rating_percentage
FROM output_file;

SELECT revenue, COUNT(*) AS revenue_estimate
FROM output_file
GROUP BY revenue
ORDER BY revenue_estimate DESC;

SELECT DISTINCT industry, revenue
FROM output_file
WHERE revenue='$10+ billion (USD)';

SELECT job_title, MAX(minimum_salary), max(maximum_salary) 
FROM output_file
GROUP BY job_title;

SELECT avg(minimum_salary), avg(maximum_salary) 
FROM output_file;