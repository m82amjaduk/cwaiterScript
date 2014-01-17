TRUNCATE invoice_card_payment;
TRUNCATE invoice_completion;
TRUNCATE invoice_confirmation;
TRUNCATE invoice_note;
TRUNCATE invoice_payment;
TRUNCATE invoice_survey; 
TRUNCATE invoices; 
TRUNCATE invoices_process;
TRUNCATE invoices_products;
TRUNCATE invoices_products_asst;
TRUNCATE invoices_products_temp;
TRUNCATE invoices_products_temp_asst;
TRUNCATE invoices_temp;

TRUNCATE rest_reservations;
TRUNCATE rest_reservations_confirm;


----------------------------------
TRUNCATE user_email;
SELECT pg_catalog.setval('user_email_id_seq', 6, true);
INSERT INTO user_email VALUES (1, 1, 1368257956, 'Y', NULL, 'AAA1786', 'amjad@conosurtek.net', 'Y', 'Y', 'Y', 'N', 'Y');
INSERT INTO user_email VALUES (2, 2, 1368298026, 'Y', NULL, 'AAA1785', 'mrr@conosurtek.net', 'Y', 'Y', 'Y', 'N', 'Y');
INSERT INTO user_email VALUES (3, 3, 1368298026, 'Y', NULL, 'AAA1784', 'lalita@cwaiter.co.uk', 'Y', 'Y', 'Y', 'N', 'Y');
INSERT INTO user_email VALUES (4, 4, 1368298026, 'Y', NULL, 'AAA1783', 'tanjum@cwaiter.co.uk', 'Y', 'Y', 'Y', 'N', 'Y');
INSERT INTO user_email VALUES (5, 5, 1368298026, 'Y', NULL, 'AAA1782', 'xxxx@cwaiter.co.uk', 'Y', 'Y', 'Y', 'N', 'Y');
INSERT INTO user_email VALUES (6, 6, 1368298026, 'Y', NULL, 'AAA1781', 'yyyy@cwaiter.co.uk', 'Y', 'Y', 'Y', 'N', 'Y');

TRUNCATE user_reg;
SELECT pg_catalog.setval('user_reg_id_seq', 6, true);
INSERT INTO user_reg VALUES (1, 'AAA1786', 1, '#', 'Amjad', 'Mojumder', '90385f0ff8eda8372fd29a30d6ef0e94f902a12f', '46a19b', '518de79476df9', '518de79476e45', '33490dc91e7432a413081605082fc55b07335ccd', 1368257956, 1368383234, 1368257956, '213.104.214.8', 'conosur', 'conosur', 'conosur', 'N', 'Y', '1.1.1.1', 1368257956, 'AAA1786');

INSERT INTO user_reg VALUES (2, 'AAA1785', 1, '#', 'Rezwanur', 'Rahman', 'e213079f7b6dc17507b88adda1c65861585a40c9', '7ba771', '518e841a5164e', '518e841a516a1', 'fe17a68ed6a43a14e9e31d4d4d878fb023c5e7e7', 1368298026, 1368373518, 1368298026, '2.24.210.87', 'conosur', 'conosur', 'conosur', 'N', 'Y', '1.1.1.1', 1368298026, 'AAA1784');

INSERT INTO user_reg VALUES (3, 'AAA1784', 1, '#', 'Lalita', 'Sahu', 'cf4314f04a350dec74e8e8c828b5996701dc6b8a', '7ba771', '518e841a5164e', '518e841a516a1', 'fe17a68ed6a43a14e9e31d4d4d878fb023c5e7e7', 1368298026, 1368373518, 1368298026, '2.24.210.87', 'conosur', 'conosur', 'conosur', 'N', 'Y', '1.1.1.1', 1368298026, 'AAA1784');
INSERT INTO user_reg VALUES (4, 'AAA1783', 1, '#', 'Tanjum', 'Khan', 'ff8d4b692e7849e164422d2d9bf5937377bf799b', '7ba771', '518e841a5164e', '518e841a516a1', 'fe17a68ed6a43a14e9e31d4d4d878fb023c5e7e7', 1368298026, 1368373518, 1368298026, '2.24.210.87', 'conosur', 'conosur', 'conosur', 'N', 'Y', '1.1.1.1', 1368298026, 'AAA1783');
INSERT INTO user_reg VALUES (5, 'AAA1782', 1, '#', 'xxxx', 'xxxx', '90385f0ff8eda8372fd29a30d6ef0e94f902a12f', '7ba771', '518e841a5164e', '518e841a516a1', 'fe17a68ed6a43a14e9e31d4d4d878fb023c5e7e7', 1368298026, 1368373518, 1368298026, '2.24.210.87', 'conosur', 'conosur', 'conosur', 'N', 'Y', '1.1.1.1', 1368298026, 'AAA1782');
INSERT INTO user_reg VALUES (6, 'AAA1781', 1, '#', 'yyyy', 'yyyy', '90385f0ff8eda8372fd29a30d6ef0e94f902a12f', '7ba771', '518e841a5164e', '518e841a516a1', 'fe17a68ed6a43a14e9e31d4d4d878fb023c5e7e7', 1368298026, 1368373518, 1368298026, '2.24.210.87', 'conosur', 'conosur', 'conosur', 'N', 'Y', '1.1.1.1', 1368298026, 'AAA1781');




TRUNCATE user_loggin;
SELECT pg_catalog.setval('user_loggin_id_seq', 6, true);
INSERT INTO user_loggin VALUES (1, 'AAA1786', 1368257956, -2, '213.104.214.8', '#', '#', '#', '#');
INSERT INTO user_loggin VALUES (2, 'AAA1785', 1368257956, -2, '213.104.214.8', '#', '#', '#', '#');
INSERT INTO user_loggin VALUES (3, 'AAA1784', 1368257956, -2, '213.104.214.8', '#', '#', '#', '#');
INSERT INTO user_loggin VALUES (4, 'AAA1783', 1368257956, -2, '213.104.214.8', '#', '#', '#', '#');
INSERT INTO user_loggin VALUES (5, 'AAA1782', 1368257956, -2, '213.104.214.8', '#', '#', '#', '#');
INSERT INTO user_loggin VALUES (6, 'AAA1781', 1368257956, -2, '213.104.214.8', '#', '#', '#', '#');


TRUNCATE user_phone;
SELECT pg_catalog.setval('user_phone_id_seq', 6, true);
INSERT INTO user_phone VALUES (1, 1, 1368276249, 'Y', NULL, 'AAA1786', '+44', '7900682131', 'mobile', 'Y', 'N', 'Y');
INSERT INTO user_phone VALUES (2, 2, 1368316501, 'Y', NULL, 'AAA1785', '+44', '7900642132', 'mobile', 'Y', 'N', 'Y');
INSERT INTO user_phone VALUES (3, 3, 1368377784, 'Y', NULL, 'AAA1784', '+44', '7402509236', 'mobile', 'Y', 'N', 'Y');
INSERT INTO user_phone VALUES (4, 4, 1368276249, 'Y', NULL, 'AAA1783', '+44', '7900682134', 'mobile', 'Y', 'N', 'Y');
INSERT INTO user_phone VALUES (5, 5, 1368316501, 'Y', NULL, 'AAA1782', '+44', '7900642335', 'mobile', 'Y', 'N', 'Y');
INSERT INTO user_phone VALUES (6, 6, 1368377784, 'Y', NULL, 'AAA1781', '+44', '7402509236', 'mobile', 'Y', 'N', 'Y');


