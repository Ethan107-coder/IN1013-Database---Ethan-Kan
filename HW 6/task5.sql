-- 1.	Which waiters have taken 2 or more bills on a single date? List the waiter names and surnames, the dates and the number of bills they have taken.

SELECT A.first_name, A.surname, B.bill_date, COUNT(B.bill_no) AS bill_count
FROM restBill B
JOIN restStaff A ON B.waiter_no = A.staff_no
GROUP BY A.first_name, A.surname, B.bill_date
HAVING COUNT(B.bill_no) >= 2;

-- 2.	List the rooms with tables that can server more than 6 people and how many of such tables they have.

SELECT room_name, COUNT(*) AS no_of_tables
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;

-- 3.	List the names of the rooms and the total amount of bills in each room

SELECT A.room_name, SUM(B.bill_total) AS bill_total_per_room
FROM restBill B
JOIN restRest_table A ON A.table_no = B.table_no
GROUP BY room_name;

-- 4.	List the headwaiter’s name and surname and the total bill amount their waiters have taken. Order the list by total bill amount, largest first.

SELECT A.first_name, A.surname, SUM(B.bill_total) AS total_bill
FROM restStaff C
JOIN restBill B ON C.staff_no = B.waiter_no
JOIN restStaff A ON C.headwaiter = A.staff_no
GROUP BY A.first_name, A.surname
ORDER BY total_bill DESC;

-- 5.	List any customers who have spent more than £400 on average.

SELECT cust_name
FROM restBill
GROUP BY cust_name
HAVING AVG(bill_total) > 400;

-- 6.	Which waiters have taken 3 or more bills on a single date? List the waiter names, surnames, and the number of bills they have taken.

SELECT A.first_name, A.surname, COUNT(B.bill_no) AS no_of_bills_taken
FROM restBill B
JOIN restStaff A ON B.waiter_no = A.staff_no
GROUP BY A.first_name, A.surname, B.bill_date
HAVING COUNT(B.bill_no) >= 3;