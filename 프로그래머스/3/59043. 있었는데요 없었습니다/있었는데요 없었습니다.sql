/*보호 시작일보다 입양일이 더 빠른 동물

ANIMAL_INS : DATETIME 보호 시작일
ANIMAL_OUTS : DATETIME 입양일
*/

SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS A
INNER JOIN ANIMAL_OUTS B ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE A.DATETIME > B.DATETIME
ORDER BY A.DATETIME ASC