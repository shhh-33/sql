--모든 레코드 조회하기 

select * from ANIMAL_INS
order by ANIMAL_ID asc;
 

--역순 정렬

select name,datetime from animal_ins
order by animal_id desc;
 

--아픈동물찾기

select animal_id, name from animal_ins
where INTAKE_CONDITION ='Sick'
order by animal_id
 

--최대값 구하기

SELECT max(DATETIME) as '시간' from ANIMAL_INS;
 

--어린동물 찾기

SELECT ANIMAL_ID , NAME
FROM ANIMAL_INS
WHERE INTAKE_CONDITION != 'Aged'
ORDER BY ANIMAL_ID ASC
INTAKE_CONDITION NOT IN('Aged')
 

--동물 아이디와 이름

select animal_id,name from animal_ins
order by animal_id
 

--여러기준으로 정렬하기

select animal_id, name, datetime from animal_ins
order by name asc, datetime desc;
 

--상위 n개 레코드 

select name 
from (select name from animal_ins
      order by datetime)
where rownum =1; --서브쿼리안 실행한것의 첫번째 row 출력
 

--이름이 없는 동물의 아이디

select animal_id from animal_ins
where name is null
order by animal_id;
 

--이름이 있는 동물의 아이디

select animal_id from animal_ins
where name is not null
order by animal_id;
