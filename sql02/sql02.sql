--문제 1번
--  직원 중 최고임금과 최저임금을 "최고임금", "최저임금"프로젝션 타이틀로 출력
--  두임금의 차이는 얼마? "최고임금 - 최저임금"이란 타이틀로 출력
select  min(salary) as "최고임금",
        max(salary) as "최고임금",
        max(salary) - min(salary) as "최고임금 - 최저임금"
from employees;


--문제 2번
--  마지막으로 신입사원이 들어온 날이 언제? 
--  예) 2014년 07월 10일     <이와 같은 형식으로 출력
select to_char(max(hire_date),'YYYY"년"-MM"년"-DD"일"')
from employees;


--문제 3번
--  부서별로 평균임금, 최고임금,최저임금을 부서와 함께 출력 
--  정렬순서는 부서별로 내림차순 (department_id)
select  department_id,
        avg(salary),
        max(salary),
        min(salary)
from employees
group by department_id
order by department_id desc;


--문제 4번
--  업무별로 평균임금, 최고임금,최저임금을 업무와 함께 출력
--  업무로 내림차순 정렬 (job_id)
select  job_id,
        avg(salary),
        max(salary),
        min(salary)
from employees
group by job_id
order by job_id desc;


--문제 5번
--  가장 오래 근속한 직원의 입사일은 언제?
--  예) 2014년 07월 10일  <형식으로 출력
select to_char(min(hire_date), 'YYYY"년"-MM"월"-DD"일"')
from employees;


--문제 6번
--  평균임금과 최저임금 차이가 2000미만인 부서의
--  부서, 평균임금,최저임금, 그리고 평균임금-최저임금 을 평균임금-최저임금의 내림차순정렬
select  department_id,
        avg(salary),
        min(salary),
        avg(salary)-min(salary)
from employees
group by department_id
having avg(salary)-min(salary) < 2000
order by avg(salary)-min(salary) desc;

--문제 7번
--  업무별로 최고임금과 최저임금의 차이를 출력 
--  차이를 확인할 수 있도록 내림차순
select  job_id, 
        max(salary),
        min(salary),
        max(salary) - min(salary)
from employees
group by job_id
order by max(salary) - min(salary) desc;