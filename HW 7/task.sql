-- 1
CREATE VIEW samsBills
AS SELECT A.first_name, A.surname, B.cust_name, B.bill_date, B.bill_total
FROM restBill B
JOIN restStaff A ON B.waiter_no = A.staff_no
WHERE A.first_name = 'Sam';

-- 2
SELECT * FROM samsBills
WHERE bill_total > 400;

-- 3
CREATE VIEW roomTotals
AS SELECT A.room_name AS room_name, SUM(B.bill_total) AS total_sum
FROM restBill Ball 
JOIN restRest_table A ON B.table_no = A.table_no
GROUP BY A.room_name;

-- 4
CREATE VIEW teamTotals 
AS SELECT CONCAT(A.first_name, A.surname) AS headwaiter_name, SUM(B.bill_total) AS total_sum
FROM reststaff C
JOIN restbill B ON C.staff_no = B.waiter_no
JOIN reststaff A ON C.headwaiter = A.staff_no
GROUP BY headwaiter_name;