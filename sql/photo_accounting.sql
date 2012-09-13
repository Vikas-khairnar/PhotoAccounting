-- --To create the database :
-- sudo -u postgres createdb photo_accounting

-- -- To execute this script within a PostgreSQL session (adjust path accordingly) :
-- \i /home/pmg/Documents/photo_accounting/www/PhotoAccounting/sql/photo_accounting.sql

DROP TABLE IF EXISTS entries;
CREATE TABLE entries (id SERIAL PRIMARY KEY, customer_id INT, entry_id INT, image_id INT, image_name character varying(255), entry_date DATE DEFAULT current_date, text VARCHAR(9999), amount NUMERIC(20, 2) DEFAULT 0.00, account INT, offset_account INT);
CREATE INDEX image_id_idx ON entries (image_id);

INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (1,1,1,'2012-08-14','TEST 1',1,1,1);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (2,2,2,'2012-08-14','TEST 2',2,2,2);
-- INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (3,3,3,'2012-08-14','TEST 3',3,3,3);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (4,4,4,'2012-08-14','TEST 4',4,4,4);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (5,5,5,'2012-08-14','TEST 5',5,5,5);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (6,6,6,'2012-08-14','TEST 6',6,6,6);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (7,7,7,'2012-08-14','TEST 7',7,7,7);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (8,8,8,'2012-08-14','TEST 8',8,8,8);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (9,9,9,'2012-08-14','TEST 9',9,9,9);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (10,10,10,'2012-08-14','TEST 10',10,10,10);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (11,11,11,'2012-08-14','TEST 11',11,11,11);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (12,12,12,'2012-08-14','TEST 12',12,12,12);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (13,13,13,'2012-08-14','TEST 13',13,13,13);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (14,14,14,'2012-08-14','TEST 14',14,14,14);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (15,15,15,'2012-08-14','TEST 15',15,15,15);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (16,16,16,'2012-08-14','TEST 16',16,16,16);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (17,17,17,'2012-08-14','TEST 17',17,17,17);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (18,18,18,'2012-08-14','TEST 18',18,18,18);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (19,19,19,'2012-08-14','TEST 19',19,19,19);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (20,20,20,'2012-08-14','TEST 20',20,20,20);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (21,21,21,'2012-08-14','TEST 21',21,21,21);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (22,22,22,'2012-08-14','TEST 22',22,22,22);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (23,23,23,'2012-08-14','TEST 23',23,23,23);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (24,24,24,'2012-08-14','TEST 24',24,24,24);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (25,25,25,'2012-08-14','TEST 25',25,25,25);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (26,26,26,'2012-08-14','TEST 26',26,26,26);
INSERT INTO entries (customer_id, entry_id, image_id, entry_date, text, amount, account, offset_account) VALUES (27,27,27,'2012-08-14','TEST 27',27,27,27); 

-- SELECT * FROM entries ORDER BY image_id;
