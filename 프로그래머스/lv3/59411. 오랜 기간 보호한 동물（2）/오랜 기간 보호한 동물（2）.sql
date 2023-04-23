-- 코드를 입력하세요
SELECT i.animal_id, i.name
FROM animal_ins i
LEFT JOIN animal_outs o
ON i.animal_id = o.animal_id
WHERE o.animal_id IS NOT NULL
ORDER BY DATEDIFF(o.datetime, i.datetime) DESC
LIMIT 2;