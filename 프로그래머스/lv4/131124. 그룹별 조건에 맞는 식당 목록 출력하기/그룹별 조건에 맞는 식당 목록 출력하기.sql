-- 코드를 입력하세요
SELECT member_name, review_text, DATE_FORMAT(review_date, '%Y-%m-%d') review_date
FROM rest_review r
JOIN member_profile p
ON r.member_id = p.member_id
WHERE r.member_id = (SELECT member_id FROM rest_review
                        GROUP BY member_id
                        ORDER BY COUNT(*) DESC LIMIT 1)
ORDER BY 3, 2;