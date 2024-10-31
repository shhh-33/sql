/*
USED_GOODS_BOARD B
USED_GOODS_USER A

B.WRITER_ID = A.WRITER_ID
*/
SELECT A.USER_ID, A.NICKNAME, 
A.CITY ||' '|| A.STREET_ADDRESS1 || ' ' || A.STREET_ADDRESS2 AS "전체주소", 
SUBSTR(A.TLNO,0,3) ||'-' || SUBSTR(A.TLNO,4,4)  ||'-' || SUBSTR(A.TLNO,8,11) AS "전화번호"
FROM USED_GOODS_USER A
INNER JOIN (
    SELECT WRITER_ID
    FROM USED_GOODS_BOARD 
    GROUP BY WRITER_ID
    HAVING COUNT(*) >=3
)B
ON B.WRITER_ID = A.USER_ID
ORDER BY A.USER_ID DESC


