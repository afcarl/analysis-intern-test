drop table if exists status_type; create table status_type ("id","status"); insert into status_type values(0,'cancelled'), (1,'complete'), (2,'pending');
drop table if exists transaction_type; create table transaction_type ("id","type"); insert into transaction_type values  (1, 'create') , (2, 'modify profile') , (3, 'purchase') , (4, 'cancel account') , (5, 'purchase cancel');
drop table if exists transactions; create table transactions ("id","user_id","transaction_type_id","ts","st","transaction_status_id","parent_transaction_id"); insert into transactions values  (1, 1, 1, null, '1/1/15', 1, null) , (2, 1, 3, '1/11/15', '1/11/15', 1, null) , (3, 1, 3, '1/17/15', '1/17/15', 1, null) , (4, 1, 3, '1/24/15', '1/24/15', 1, null) , (5, 1, 3, '1/26/15', '1/26/15', 1, null) , (6, 1, 2, '2/10/15', '2/10/15', 1, null) , (7, 1, 3, '2/17/15', '2/17/15', 1, null) , (8, 1, 2, '3/2/15', '3/2/15', 1, null) , (9, 1, 3, '3/3/15', '3/3/15', 1, null) , (10, 1, 3, '3/16/15', '3/16/15', 1, null) , (11, 1, 5, '3/25/15', '3/25/15', 1, 9.0) , (12, 1, 4, '4/3/15', '4/3/15', 2, null) , (13, 2, 1, '4/3/15', '4/3/15', 1, null) , (14, 2, 3, '4/12/15', '4/12/15', 1, null) , (15, 2, 3, '4/12/15', '4/12/15', 1, null) , (16, 2, 2, '4/16/15', '4/16/15', 1, null) , (17, 2, 3, '4/18/15', '4/18/15', 1, null) , (18, 3, 1, '4/29/15', '4/29/15', 1, null) , (19, 3, 3, '5/10/15', '5/10/15', 1, null) , (20, 3, 3, '5/19/15', '5/19/15', 1, null) , (21, 3, 3, '5/28/15', '5/28/15', 1, null) , (22, 3, 3, '6/7/15', '6/7/15', 1, null) , (23, 3, 3, '6/8/15', '6/8/15', 1, null) , (24, 3, 3, '6/23/15', '6/23/15', 1, null) , (25, 3, 3, '7/5/15', '7/5/15', 1, null) , (26, 3, 3, '7/20/15', '7/20/15', 0, null) , (27, 3, 3, '7/31/15', '7/31/15', 1, null) , (28, 3, 5, '8/3/15', '8/3/15', 1, 27.0) , (29, 3, 3, '8/10/15', '8/10/15', 1, null) , (30, 3, 4, '8/25/15', '8/25/15', 1, null) , (31, 4, 1, '9/8/15', '9/8/15', 1, null) , (32, 4, 3, '9/11/15', '9/11/15', 1, null) , (33, 4, 3, '9/13/15', '9/13/15', 1, null) , (34, 4, 3, '9/19/15', '9/19/15', 1, null) , (35, 4, 3, '9/25/15', '9/25/15', 1, null) , (36, 4, 3, '10/8/15', '10/8/15', 1, null) , (37, 4, 3, '10/8/15', '10/8/15', 1, null) , (38, 4, 3, '10/10/15', '10/10/15', 1, null) , (39, 4, 3, '10/10/15', '10/10/15', 1, null) , (40, 4, 3, '10/13/15', '10/13/15', 1, null) , (41, 4, 3, '10/28/15', '10/28/15', 1, null) , (42, 4, 3, '11/3/15', '11/3/15', 1, null) , (43, 4, 3, '11/5/15', '11/5/15', 1, null) , (44, 4, 3, '11/6/15', '11/6/15', 1, null) , (45, 4, 3, null, '11/11/15', 1, null) , (46, 4, 3, '11/19/15', '11/19/15', 1, null) , (47, 4, 3, '11/28/15', '11/28/15', 1, null) , (48, 4, 4, '12/10/15', '12/10/15', 1, null) , (49, 5, 1, '12/21/15', '12/21/15', 1, null) , (50, 5, 3, '12/26/15', '12/26/15', 1, null) , (51, 5, 3, '1/9/16', '1/9/16', 1, null) , (52, 5, 3, null, '1/19/16', 1, null) , (53, 5, 3, '2/3/16', '2/3/16', 1, null) , (54, 5, 3, '2/13/16', '2/13/16', 1, null) , (55, 5, 3, '2/20/16', '2/20/16', 1, null) , (56, 5, 3, '3/5/16', '3/5/16', 1, null) , (57, 5, 3, '3/10/16', '3/10/16', 1, null) , (58, 5, 3, '3/12/16', '3/12/16', 1, null) , (59, 5, 3, '3/17/16', '3/17/16', 1, null) , (60, 5, 3, '3/17/16', '3/17/16', 1, null) , (61, 5, 3, '3/30/16', '3/30/16', 1, null) , (62, 5, 3, '4/3/16', '4/3/16', 1, null) , (63, 5, 3, '4/16/16', '4/16/16', 1, null) , (64, 5, 3, '5/1/16', '5/1/16', 1, null) , (65, 5, 3, '5/15/16', '5/15/16', 1, null) , (66, 5, 3, '5/16/16', '5/16/16', 1, null) , (67, 5, 2, '5/18/16', '5/18/16', 1, null) , (68, 5, 3, '5/22/16', '5/22/16', 1, null) , (69, 6, 1, '6/4/16', '6/4/16', 1, null) , (70, 6, 3, '6/7/16', '6/7/16', 1, null) , (71, 6, 3, null, '6/17/16', 1, null) , (72, 6, 3, '6/26/16', '6/26/16', 1, null) , (73, 6, 3, '7/8/16', '7/8/16', 1, null) , (74, 6, 3, '7/22/16', '7/22/16', 1, null) , (75, 6, 3, '7/27/16', '7/27/16', 1, null) , (76, 6, 3, '8/1/16', '8/1/16', 1, null) , (77, 6, 3, '8/9/16', '8/9/16', 1, null) , (78, 6, 3, '8/19/16', '8/19/16', 1, null) , (79, 6, 3, '8/27/16', '8/27/16', 1, null) , (80, 6, 3, '9/5/16', '9/5/16', 1, null) , (81, 6, 3, '9/17/16', '9/17/16', 1, null) , (82, 6, 3, '9/19/16', '9/19/16', 1, null) , (83, 6, 5, '10/3/16', '10/3/16', 1, 82.0) , (84, 6, 4, '10/4/16', '10/4/16', 1, null) , (85, 7, 1, '10/19/16', '10/19/16', 1, null) , (86, 7, 2, '11/1/16', '11/1/16', 1, null) , (87, 7, 2, '11/11/16', '11/11/16', 1, null) , (88, 7, 2, null, '11/15/16', 1, null) , (89, 7, 2, '11/30/16', '11/30/16', 1, null) , (90, 7, 2, '12/7/16', '12/7/16', 1, null) , (91, 7, 3, '12/12/16', '12/12/16', 1, null) , (92, 7, 3, '12/14/16', '12/14/16', 1, null) , (93, 7, 3, '12/21/16', '12/21/16', 1, null) , (94, 7, 3, '1/4/17', '1/4/17', 1, null) , (95, 7, 3, '1/8/17', '1/8/17', 1, null) , (96, 7, 3, '1/14/17', '1/14/17', 1, null) , (97, 7, 3, '1/27/17', '1/27/17', 1, null) , (98, 7, 3, '2/11/17', '2/11/17', 1, null) , (99, 7, 5, '2/24/17', '2/24/17', 1, 88.0) , (100, 7, 4, '3/2/17', '3/2/17', 1, null) , (101, 8, 1, null, '3/3/17', 1, null) , (102, 8, 2, '3/16/17', '3/16/17', 1, null) , (103, 8, 2, '3/29/17', '3/29/17', 1, null) , (104, 8, 2, '4/4/17', '4/4/17', 1, null) , (105, 8, 2, '4/11/17', '4/11/17', 1, null) , (106, 8, 3, '4/14/17', '4/14/17', 1, null) , (107, 8, 4, '4/26/17', '4/26/17', 1, null) 