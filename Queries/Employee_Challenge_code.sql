-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (______) _____,
______,
______,
______

INTO nameyourtable
FROM _______
WHERE _______
ORDER BY _____, _____ DESC;
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (t.title) e.emp_no,
e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO recent_title
FROM titles as t
join employees as e
on (t.emp_no = e.emp_no)
WHERE e.birth_date between '1952-01-01' and '1955-12-31' and 
-----------------------------------------------------------------------------------
SELECT Distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO unique_title
FROM titles as t
join employees as e
on (t.emp_no = e.emp_no)
WHERE (e.birth_date between '1952-01-01' and '1955-12-31') and (t.to_date = '9999-01-01')
order BY e.emp_no ,t.title desc;
--------------------------------------------------------------------------------------
select count(u.title), u.title 
from unique_title as u
--join unique_title as u
--on (t.emp_no = u.emp_no)
group by u.title
order by count(u.title) desc
----------------------------------------------------------------------------------------
select count(u.title), u.title 
into retiring_titles 
from unique_title as u
--join unique_title as u
--on (t.emp_no = u.emp_no)
group by u.title
order by count(u.title) desc
------------------------------------------------------------------------------------------
SELECT distinct on (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
into mentor_eligible
from employees as e
join dep_emp as de on e.emp_no = de.emp_no
join titles as t on de.emp_no = t.emp_no
WHERE (e.birth_date between '1965-01-01' and '1965-12-31') and (t.to_date = '9999-01-01')
order BY e.emp_no asc;