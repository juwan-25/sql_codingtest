-- 코드를 입력하세요
SELECT COUNT(user_id) users
FROM user_info
WHERE age BETWEEN 20 AND 29 AND joined LIKE '2021%';