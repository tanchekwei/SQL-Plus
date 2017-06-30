ALTER SESSION SET NLS_DATE_FORMAT = 'DD/MM/YYYY'; 

PROMPT 'Data entry for FOOD ORDER table'
PROMPT

ACCEPT v_orderno	number	FORMAT '9999999'		PROMPT 'Enter order number: '
ACCEPT v_orderDate	date	FORMAT 'dd/mm/yyyy'		PROMPT 'Enter order date: '

SELECT cust_no FROM customer;
PROMPT 'Please enter one customer number from the list above.'
ACCEPT v_custNo		number	FORMAT '9999999'		PROMPT 'Enter customer number: '

SELECT staff_id FROM staff;
PROMPT 'Please write one staff number from the list above.'
ACCEPT v_staffNo		number	FORMAT '9999'		PROMPT 'Enter staff number: '

ACCEPT v_totalItems		number	FORMAT '99'			PROMPT 'Enter total items: '

ACCEPT v_foodAmount		number	FORMAT '99999.99'	PROMPT 'Enter food amount: '

INSERT INTO food_order VALUES
('&v_orderno', '&v_orderDate','&v_custNo', '&v_staffNo', '&v_totalItems','&v_foodAmount', (&v_foodAmount*0.06), (&v_foodAmount*0.1));