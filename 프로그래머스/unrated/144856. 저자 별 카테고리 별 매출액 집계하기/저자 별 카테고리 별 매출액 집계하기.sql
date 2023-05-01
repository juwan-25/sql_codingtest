-- 코드를 입력하세요
SELECT b.author_id, author_name, category, SUM(price*sales) total_sales
FROM book_sales s
JOIN book b 
ON s.book_id = b.book_id
JOIN author a
ON b.author_id = a.author_id
WHERE s.sales_date LIKE '2022-01%'
GROUP BY a.author_id, category
ORDER BY 1, 3 DESC;