-- 코드를 입력하세요
SELECT p.product_id, product_name, SUM(price*amount) total_sales
FROM food_product p 
LEFT JOIN food_order o
ON p.product_id = o.product_id
WHERE produce_date LIKE '2022-05%'
GROUP BY p.product_id
ORDER BY 3 DESC, 1;
