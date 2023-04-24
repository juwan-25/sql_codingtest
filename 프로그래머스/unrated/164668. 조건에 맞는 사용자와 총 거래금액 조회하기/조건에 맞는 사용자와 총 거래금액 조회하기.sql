-- 코드를 입력하세요
SELECT user_id, nickname, sum(price) toatl_sales
FROM used_goods_board b
JOIN used_goods_user u
ON b.writer_id = u.user_id
WHERE status = 'DONE'
GROUP BY user_id
HAVING toatl_sales >= 700000
ORDER BY 3;
