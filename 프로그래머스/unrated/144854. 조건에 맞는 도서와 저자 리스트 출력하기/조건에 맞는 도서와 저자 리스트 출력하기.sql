-- 코드를 입력하세요
SELECT book_id, author_name, DATE_FORMAT(published_date, '%Y-%m-%d') published_date
FROM book
JOIN author
ON book.author_id = author.author_id
WHERE category = '경제'
ORDER BY 3;