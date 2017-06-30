PROMPT 'Data entry for ORDER LIST table'
PROMPT

SELECT order_no FROM food_order;
PROMPT 'Please enter one order number from the list above.'
ACCEPT v_orderno	number	FORMAT '9999999'	PROMPT 'Enter order number: '

SELECT menu_id FROM menu;
PROMPT 'Please enter one menu from the list above.'
ACCEPT v_menuID		char	FORMAT 'A5'			PROMPT 'Enter menu ID: '

ACCEPT v_quantity	number	FORMAT '99'			PROMPT 'Enter quantity: '

ACCEPT v_price		number	FORMAT '9999.99'	PROMPT 'Enter price: '

INSERT INTO order_list VALUES
('&v_orderno', '&v_menuID','&v_quantity', '&v_price');