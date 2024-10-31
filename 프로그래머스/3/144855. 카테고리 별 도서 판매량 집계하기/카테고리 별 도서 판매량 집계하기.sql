SELECT A.CATEGORY, SUM(B.SALES) TOTAL_SALES
FROM BOOK A 
INNER JOIN BOOK_SALES B
ON A.BOOK_ID = B.BOOK_ID
WHERE TO_CHAR(SALES_DATE, 'YYYY-MM') = '2022-01'
GROUP BY A.CATEGORY
ORDER BY CATEGORY