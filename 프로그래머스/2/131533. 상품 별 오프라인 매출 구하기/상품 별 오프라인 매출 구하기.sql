/*
PRODUCT 테이블과 OFFLINE_SALE 테이블에서 상품코드 별 매출액(판매가 * 판매량) 합계를 출력
*/

SELECT A.PRODUCT_CODE, SUM(A.PRICE * B.SALES_AMOUNT)  AS SALES
FROM PRODUCT A
INNER JOIN OFFLINE_SALE B
ON A.PRODUCT_ID = B.PRODUCT_ID
GROUP BY A.PRODUCT_CODE
ORDER BY SALES DESC, A.PRODUCT_CODE