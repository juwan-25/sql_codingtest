-- 코드를 입력하세요
SELECT CONCAT('/home/grep/src/',f.board_id,'/',file_id,file_name,file_ext) file_path
FROM used_goods_file f
JOIN used_goods_board d
ON f.board_id = d.board_id
WHERE views = ( SELECT MAX(views)
                FROM used_goods_board
                )
ORDER BY file_id desc