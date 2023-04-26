-- 코드를 입력하세요
SELECT car_id,
    MAX(CASE
        WHEN '2022-10-16' BETWEEN DATE_FORMAT(start_date, '%Y-%m-%d') AND DATE_FORMAT(end_date, '%Y-%m-%d')
        THEN '대여중'
        ELSE '대여 가능'
        END ) availability
FROM car_rental_company_rental_history
GROUP BY car_id
ORDER BY 1 DESC;