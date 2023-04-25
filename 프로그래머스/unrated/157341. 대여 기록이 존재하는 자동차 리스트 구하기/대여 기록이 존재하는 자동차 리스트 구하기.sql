-- 코드를 입력하세요
SELECT DISTINCT r.car_id
FROM car_rental_company_car r
INNER JOIN car_rental_company_rental_history h
ON r.car_id = h.car_id 
WHERE car_type = '세단' 
AND start_date LIKE '2022-10%'
ORDER BY 1 DESC;