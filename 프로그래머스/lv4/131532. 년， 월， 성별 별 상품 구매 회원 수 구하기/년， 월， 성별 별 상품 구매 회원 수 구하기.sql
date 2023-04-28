-- 코드를 입력하세요
SELECT YEAR(sales_date) year, MONTH(sales_date) month, gender, COUNT(DISTINCT u.user_id) users
FROM user_info u
JOIN online_sale s
ON u.user_id = s.user_id
WHERE gender IS NOT NULL
GROUP BY year, month, gender
ORDER BY 1,2,3;
