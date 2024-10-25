/*
BOOK A BOOK_SALES B

A.BOOK, TOTAL_SALES
*/

SELECT A.CATEGORY, SUM(SALES) TOTAL_SALES
FROM BOOK A
INNER JOIN BOOK_SALES B ON A.BOOK_ID=B.BOOK_ID
WHERE TO_CHAR(B.SALES_DATE,'YYYY-MM')='2022-01'
GROUP BY A.CATEGORY
ORDER BY A.CATEGORY