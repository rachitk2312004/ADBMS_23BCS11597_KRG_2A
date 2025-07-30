CREATE TABLE EMPLOYEE (
  empId int primary KEY,
  name varchar(15),
  dept varchar(10),
  managerId int
);

INSERT INTO EMPLOYEE(empId,name,dept,managerId) VALUES 
(1, 'Alice', 'HR',null),
(2, 'Bob', 'Finance',1), 
(3, 'Charlie', 'IT',1),
(4, 'David', 'Finance',2),
(5, 'Eve', 'It',3),
(6, 'frank', 'HR',1);

SELECT * FROM EMPLOYEE;

ALTER TABLE EMPLOYEE
ADD constraint FK_EMPLoYEE FOREIGN KEY(managerId)
references EMPLOYEE(empId);

select E1.name as [EMPLOYEE_Name], E1.dept as [EMPLOYEE_DEPARTMENT], E2.name as [Manager_Name], E2.dept as [MANAGER_DEPARTMENT]
from EMPLOYEE as E1
Left Outer join
EMPLOYEE as E2 
on E1.managerId = E2.empId;
