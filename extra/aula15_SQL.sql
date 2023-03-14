with 

homens AS (
SELECT first_name, 
       last_name
FROM patients
where gender = 'M' 
),

mesmo_sobrenome AS (
select A.first_name AS nome1,
       B.first_name AS nome2,
       A.last_name
FROM homens A 
JOIN homens b 
WHERE A.last_name = B.last_name)

SELECT * 
FROM mesmo_sobrenome
WHERE nome1 <> nome2





