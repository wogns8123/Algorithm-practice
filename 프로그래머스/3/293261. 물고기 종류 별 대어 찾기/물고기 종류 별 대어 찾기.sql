-- 코드를 작성해주세요
SELECT a.ID, b.FISH_NAME, LENGTH
FROM FISH_INFO a
JOIN FISH_NAME_INFO b
ON a.FISH_TYPE = b.FISH_TYPE
WHERE a.LENGTH = (SELECT MAX(LENGTH) FROM FISH_INFO WHERE FISH_TYPE = a.FISH_TYPE)