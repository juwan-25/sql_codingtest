-- 코드를 입력하세요
SELECT category, SUM(sales) total_sales
FROM book
JOIN book_sales
ON book.book_id = book_sales.book_id
WHERE sales_date LIKE '2022-01%'
GROUP BY category
ORDER BY 1;