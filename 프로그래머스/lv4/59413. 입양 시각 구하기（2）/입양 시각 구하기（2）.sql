-- 코드를 입력하세요
SET @h = -1;
SELECT (@h := @h + 1) hour,
    (SELECT COUNT(HOUR(datetime))
        FROM animal_outs
        WHERE HOUR(datetime) = @h) count
FROM animal_outs
WHERE @h < 23;

