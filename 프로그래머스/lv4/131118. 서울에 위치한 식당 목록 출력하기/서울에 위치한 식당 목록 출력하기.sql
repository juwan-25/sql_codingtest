-- 코드를 입력하세요
SELECT i.rest_id, rest_name, food_type, favorites, address, ROUND(AVG(review_score),2) score
FROM rest_info i
JOIN rest_review r
ON i.rest_id = r.rest_id
WHERE address LIKE '서울%'
GROUP BY i.rest_id
ORDER BY 6 DESC, 4 DESC;