-- 코드를 입력하세요
SELECT icecream_info.flavor flavor 
FROM first_half, icecream_info
WHERE icecream_info.flavor = first_half.flavor
AND total_order > 3000 
AND ingredient_type = 'fruit_based'
ORDER BY total_order DESC;
