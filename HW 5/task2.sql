-- 1.	How much money has the restaurant taken? Change the name of the output column to 'Income'.

SELECT SUM(bill_total) AS Income FROM restbill;

-- 2.	How much money did the restaurant take in February 2016? Change the name of the output column to 'Feb Income'.

SELECT SUM(bill_total) AS "Feb Income" FROM restbill WHERE bill_date LIKE '1602%';

-- 3.	Calculate the average bill in table 2.

SELECT AVG(bill_total) FROM restbill WHERE table_no = 2;

-- 4.	Calculate the minimal, maximal, and average amount of seats of tables in Blue room. Name the corresponding columns as Min, Max, Avg.

SELECT MIN(no_of_seats) AS "Min" FROM restrest_table WHERE room_name = 'Blue';
SELECT MAX(no_of_seats) AS "Max" FROM restrest_table WHERE room_name = 'Blue';
SELECT AVG(no_of_seats) AS "Avg" FROM restrest_table WHERE room_name = 'Blue';

-- 5.	Count how many distinct tables are served by waiters 004 and 002.

SELECT COUNT(DISTINCT table_no) FROM restbill WHERE waiter_no IN ('2','4');