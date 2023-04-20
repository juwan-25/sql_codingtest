-- 코드를 입력하세요
SELECT mcdp_cd 진료과코드, count(*) 5월예약건수
FROM appointment
WHERE MONTH(apnt_ymd) = 5
GROUP BY mcdp_cd
ORDER BY 2, 1;