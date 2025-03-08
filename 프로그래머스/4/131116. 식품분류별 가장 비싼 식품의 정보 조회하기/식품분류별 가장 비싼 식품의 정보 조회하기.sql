-- 코드를 입력하세요
SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME 
FROM FOOD_PRODUCT
WHERE CATEGORY IN ('과자','국','김치','식용유') AND PRICE IN (
    SELECT MAX(PRICE) FROM FOOD_PRODUCT 
    GROUP BY CATEGORY
)
ORDER BY MAX_PRICE DESC;