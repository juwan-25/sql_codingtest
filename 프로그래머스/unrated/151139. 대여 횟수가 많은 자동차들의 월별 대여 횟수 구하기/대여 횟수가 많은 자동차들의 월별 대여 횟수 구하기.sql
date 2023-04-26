-- 코드를 입력하세요
SELECT MONTH(start_date) month, car_id, COUNT(*) records
FROM car_rental_company_rental_history
WHERE car_id in ( SELECT car_id  
                    FROM car_rental_company_rental_history
                    WHERE MONTH(start_date) BETWEEN 8 AND 10
                    GROUP BY car_id
                    HAVING COUNT(car_id) >= 5
                ) AND MONTH(start_date) BETWEEN 8 AND 10
GROUP BY month, car_id
HAVING records > 0
ORDER BY 1, 2 DESC;