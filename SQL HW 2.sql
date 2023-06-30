SQL HomeWork 2. Joins

 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 SELECT employees.employee_name, salary.monthly_salary 
FROM
  employees 
  INNER JOIN
  salary 
    ON employees.id = salary.id
 2. Вывести всех работников у которых ЗП меньше 2000.
 SELECT employees.employee_name, salary.monthly_salary 
FROM
  employees 
  INNER JOIN
  salary 
    ON employees.id = salary.id
    where monthly_salary < 2000
 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 SELECT employee_salary.salary_id, employees.employee_name, salary.monthly_salary  
FROM
  employees 
  right JOIN
  employee_salary
    ON employee_salary.employee_id = employees.id
    right join salary on salary.id=employee_salary.employee_id
    where employee_name is null  
 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
 SELECT employee_salary.salary_id, employees.employee_name, salary.monthly_salary  
FROM
  employees 
  right JOIN
  employee_salary
    ON employee_salary.employee_id = employees.id
    right join salary on salary.id=employee_salary.employee_id
    where employee_name is null and monthly_salary < 2000
 5. Найти всех работников кому не начислена ЗП.
 SELECT  employees.employee_name, salary.monthly_salary  
FROM
  employees 
  left JOIN
  employee_salary
    ON employee_salary.employee_id = employees.id
    left join salary on salary.id=employee_salary.employee_id
    where monthly_salary is null 
 6. Вывести всех работников с названиями их должности.
 SELECT  employees.employee_name, roles1.role_name  
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    join roles1 on roles_employee.role_id=roles1.id
 7. Вывести имена и должность только Java разработчиков.
 SELECT  employees.employee_name, roles1.role_name  
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    join roles1 on roles_employee.role_id=roles1.id
    where role_name like '%Java%'
 8. Вывести имена и должность только Python разработчиков.
 SELECT  employees.employee_name, roles1.role_name  
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    join roles1 on roles_employee.role_id=roles1.id
    where role_name like '%Python%'
 9. Вывести имена и должность всех QA инженеров.
 SELECT  employees.employee_name, roles1.role_name  
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    join roles1 on roles_employee.role_id=roles1.id
    where role_name like '%QA%'
 10. Вывести имена и должность ручных QA инженеров.
 SELECT  employees.employee_name, roles1.role_name  
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    join roles1 on roles_employee.role_id=roles1.id
    where role_name like '%Manual QA%'
 11. Вывести имена и должность автоматизаторов QA
 SELECT  employees.employee_name, roles1.role_name  
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    join roles1 on roles_employee.role_id=roles1.id
    where role_name like '%Automation QA%'
 12. Вывести имена и зарплаты Junior специалистов
 SELECT  employees.employee_name, salary.monthly_salary, roles1.role_name
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    left join employee_salary
    on employees.id=employee_salary.employee_id 
    left join salary 
    on employee_salary.employee_id =salary.id
    left join roles1
    on roles_employee.role_id =roles1.id
    where role_name like 'Junior%'
 13. Вывести имена и зарплаты Middle специалистов
 SELECT  employees.employee_name, salary.monthly_salary, roles1.role_name
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    left join employee_salary
    on employees.id=employee_salary.employee_id 
    left join salary 
    on employee_salary.employee_id =salary.id
    left join roles1
    on roles_employee.role_id =roles1.id
    where role_name like 'Middle%'
 14. Вывести имена и зарплаты Senior специалистов
 SELECT  employees.employee_name, salary.monthly_salary, roles1.role_name
FROM
  employees 
 JOIN
  roles_employee
    ON employees.id = roles_employee.employee_id
    right join employee_salary
    on employees.id=employee_salary.employee_id 
    right join salary 
    on employee_salary.employee_id =salary.id
    right join roles1
    on roles_employee.role_id =roles1.id
    where role_name like 'Senior%'
 15. Вывести зарплаты Java разработчиков
 select salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%Java%'
 16. Вывести зарплаты Python разработчиков
 select salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%Python%'
 17. Вывести имена и зарплаты Junior Python разработчиков
 select employees.employee_name, salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%Junior Python%'
 18. Вывести имена и зарплаты Middle JS разработчиков
 select employees.employee_name, salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%Middle JavaScript%'
 19. Вывести имена и зарплаты Senior Java разработчиков
 select employees.employee_name, salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%Senior Java%'
 20. Вывести зарплаты Junior QA инженеров
 select salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%Junior QA%'
 21. Вывести среднюю зарплату всех Junior специалистов
 select AVG(salary.monthly_salary)  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%Junior%'
 22. Вывести сумму зарплат JS разработчиков
 select sum(salary.monthly_salary)  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%JavaScript%'
 23. Вывести минимальную ЗП QA инженеров
 select min(salary.monthly_salary)  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%QA%'
 24. Вывести максимальную ЗП QA инженеров
 select max(salary.monthly_salary)  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%QA%'
 25. Вывести количество QA инженеров
 select count(role_name)  
from employees
join roles_employee
on employees.id=roles_employee.employee_id 
join roles1 
on roles1.id=roles_employee.role_id 
where role_name like '%QA%'
 26. Вывести количество Middle специалистов.
 select count(role_name)  
from employees
join roles_employee
on employees.id=roles_employee.employee_id 
join roles1 
on roles1.id=roles_employee.role_id 
where role_name like '%Middle%'
 27. Вывести количество разработчиков
 select count(role_name)  
from employees
join roles_employee
on employees.id=roles_employee.employee_id 
join roles1 
on roles1.id=roles_employee.role_id 
where role_name like '%developer%'
 28. Вывести фонд (сумму) зарплаты разработчиков.
 select sum(salary.monthly_salary)  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where role_name like '%developer%'
 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
 select employees.employee_name, roles1.role_name,  salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
order by monthly_salary asc 
 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 select employees.employee_name, roles1.role_name,  salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where monthly_salary > 1700 and monthly_salary < 2300
order by monthly_salary asc 
 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
 select employees.employee_name, roles1.role_name,  salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where monthly_salary < 2300
order by monthly_salary asc 
 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
 select employees.employee_name, roles1.role_name,  salary.monthly_salary  
from employee_salary 
join employees 
on employee_salary.employee_id=employees.id 
join salary 
on employee_salary.salary_id=salary.id 
join roles_employee 
on employees.id=roles_employee.employee_id 
join roles1 
on roles_employee.role_id=roles1.id 
where monthly_salary = 1100 or monthly_salary = 1500 or monthly_salary = 2000
order by monthly_salary asc 
