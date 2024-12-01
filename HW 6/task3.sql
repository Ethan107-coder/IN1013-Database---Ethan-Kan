-- 1.	List the names of the waiters who have served the customer Tanya Singh.

SELECT DISTINCT first_name, surname FROM reststaff INNER JOIN restbill WHERE cust_name = 'Tanya Singh';

-- 2.	On which dates in February 2016 did the Headwaiter 'Charles' manage the 'Green' room? The output date should be in the format they are stored.

SELECT DISTINCT bill_date FROM restbill INNER JOIN restroom_management WHERE room_name = 'Green' AND headwaiter = 10 AND bill_date LIKE '1602%';

-- 3.	List the names and surnames of the waiters with the same headwaiter as the waiter Zoe Ball.

SELECT w2.first_name, w2.surname
FROM reststaff w1
INNER JOIN reststaff w2 ON w1.headwaiter = w2.headwaiter
WHERE w1.staff_no = 3 AND w2.staff_no != w1.staff_no;

-- 4.	List the customer name, the amount they spent and the waiter’s name for all bills. Order the list by the amount spent, highest bill first.

SELECT t1.cust_name, t1.bill_total, t2.first_name, t2.surname
FROM restbill t1
INNER JOIN reststaff t2 ON t1.waiter_no = t2.staff_no
ORDER BY t1.bill_total DESC;

-- 5.	List the names and surnames of the waiters who serve tables that worked in the same team that served bills 00014 and 00017.

SELECT DISTINCT T2.first_name, T2.surname
FROM restBill E1
INNER JOIN restStaff T1 ON E1.waiter_no = T1.staff_no
INNER JOIN restStaff T2 ON T1.headwaiter = T2.headwaiter
WHERE E1.bill_no IN (14, 17)
AND T2.staff_no != T1.staff_no;

-- 6.	List the names and surnames of the waiters in the team (including the headwaiter) that served Blue room on 160312.

SELECT Z1.first_name, Z1.surname
FROM reststaff Z1
INNER JOIN restroom_management Z2 ON Z1.staff_no = Z2.headwaiter OR Z1.headwaiter = Z2.headwaiter
WHERE Z2.room_name = 'Blue' AND Z2.room_date = 160312;