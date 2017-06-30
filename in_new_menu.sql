PROMPT 'Data entry for MENU table'
PROMPT

ACCEPT v_menu			char	FORMAT 'A5'			PROMPT 'Enter menu ID: '
ACCEPT v_description	char	FORMAT 'A30'        PROMPT 'Enter description: '
ACCEPT v_price			number	FORMAT '9999.99'	PROMPT 'Enter price: '

SELECT cat_id FROM category;
PROMPT 'Please write one category from the list above.'
ACCEPT v_category		char	FORMAT 'A5'		PROMPT 'Enter category: '

ACCEPT v_remarks		char	FORMAT 'A50'		PROMPT 'Enter remarks: '

INSERT INTO menu VALUES
('&v_menu', '&v_description','&v_price', SYSDATE, '&v_category','&v_remarks');