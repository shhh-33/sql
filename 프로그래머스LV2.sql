--최소값 구하기(오라클)

select datetime as "시간" 
from (select datetime 
      from animal_ins 
      order by datetime asc)
where rownum=1;

--동물 수 구하기 
--전체 수 조회

select count(*) as count from animal_ins;

--중복제거하기
--동물 보호소에 들어온 동물의 이름은 몇 개인지 조회하는 SQL 문을 작성해주세요.
--이때 이름이 NULL인 경우는 집계하지 않으며 중복되는 이름은 하나로 칩니다.

select  count(distinct name) as count 
from animal_ins
where name is not null;

 

--NULL 처리하기(오라클)
--이름이 없는 동물의 이름은 "No name"으로 표시
--mysql의 경우 IFNULL(컬럼, NULL일 때 대체할 문자)

select ANIMAL_TYPE, NVL(name, 'No name'),SEX_UPON_INTAKE
from animal_ins
order by animal_id;

 

--고양이와 개는 몇마리 있을까
--고양이와 개가 각각 몇 마리인지 조회

select animal_type, count(animal_type) as count
from animal_ins
group by animal_type
order by animal_type; --고양이를 개보다 먼저 조회

 
--동명 동물 수 찾기

select name, count(name) as count
from animal_ins
group by name
having count(name)>=2 -- 동물 이름 중 두 번 이상 쓰인 이름, 이름이 없는 동물은 집계에서 제외
order by name -- 이름 순으로 조회


--입양 시각 구하기(1)
--시간에서 시간대를 추출하는 HOUR 함수

select hour(datetime) HOUR, count(datetime) COUNT
from animal_outs
group by hour(datetime)
having hour >=9 and hour<=19 --09:00부터 19:59까지
order by hour --시간대 순으로 정렬

 

--루시와 엘라 찾기

select ANIMAL_ID, NAME, SEX_UPON_INTAKE from ANIMAL_INS
where SEX_UPON_INTAKE = 'Spayed Female' 
and NAME IN ('Lucy','Ella','Pickle','Rogan','Sabrina','Mitty')
order by animal_id;



--이름에 el이 들어가는 동물 찾기

 
select animal_id, name from animal_ins
where animal_type ='Dog'
and (name Like '%el%' or name Like '%EL%')
order by name;
