-- 코드를 입력하세요
SELECT u.user_id,
    nickname,
    CONCAT_WS(" ", city, street_address1, street_address2) 전체주소,
    CONCAT_WS("-", SUBSTRING(tlno, 1, 3), SUBSTRING(tlno, 4, 4), SUBSTRING(tlno, 8, 4)) 전화번호
FROM used_goods_board b
JOIN used_goods_user u
ON b.writer_id = u.user_id
GROUP BY u.user_id
HAVING COUNT(u.user_id) >= 3
ORDER BY 1 DESC;

