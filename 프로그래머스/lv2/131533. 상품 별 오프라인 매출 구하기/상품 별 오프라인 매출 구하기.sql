-- 코드를 입력하세요
SELECT product_code, SUM(sales_amount*price) sales
FROM product
JOIN offline_sale
ON product.product_id = offline_sale.product_id
GROUP BY product_code
ORDER BY 2 DESC, 1;

