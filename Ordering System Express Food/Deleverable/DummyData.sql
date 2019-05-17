#
# TABLE STRUCTURE FOR: Chef
#

DROP TABLE IF EXISTS `Chef`;

CREATE TABLE `Chef` (
  `Employee_ID` int(11) NOT NULL,
  `Position` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `Chef_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (0, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (1, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (2, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (3, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (4, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (5, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (6, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (7, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (8, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (9, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (10, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (11, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (12, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (13, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (14, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (15, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (16, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (17, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (18, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (19, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (20, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (21, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (22, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (23, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (24, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (25, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (26, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (27, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (28, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (29, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (30, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (31, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (32, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (33, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (34, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (35, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (36, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (37, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (38, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (39, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (40, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (42, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (43, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (44, ' Vice Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (45, 'Junior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (46, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (47, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (48, 'Head Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (49, 'Senior Chef');
INSERT INTO `Chef` (`Employee_ID`, `Position`) VALUES (50, 'Head Chef');


#
# TABLE STRUCTURE FOR: Client
#

DROP TABLE IF EXISTS `Client`;

CREATE TABLE `Client` (
  `Client_ID` int(11) NOT NULL,
  `Phone_Number` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Client_ID`),
  UNIQUE KEY `Phone_Number` (`Phone_Number`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (1, '975.025.0487', '085 Schaden Ports Suite 504\nWest Marquischester, I', 'vbruen@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (2, '389-646-7430', '1472 Gutmann Cliffs\nAbernathystad, MA 76405-3929', 'ora.dare@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (3, '(675)936-546', '04745 Littel Gateway\nGreenmouth, SC 65051-7689', 'toney.haley@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (4, '(826)573-505', '17082 Kelly Isle\nReynoldschester, LA 02205-4201', 'dallin.heathcote@exa');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (5, '1-617-102-28', '45181 Mertz Islands Apt. 528\nPort Angeline, AR 619', 'neva.ortiz@example.c');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (6, '960-853-0255', '75773 Claire Row Apt. 723\nSouth Penelope, MN 03960', 'zack.terry@example.n');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (7, '1-433-101-21', '01642 Audreanne Groves\nZelmaborough, NH 69357', 'ewilkinson@example.n');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (8, '656-857-1856', '097 Greg Burgs\nSchultzbury, CA 05000', 'genevieve.fritsch@ex');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (9, '(972)448-212', '019 Devon Crescent Suite 341\nSouth Rosalee, IA 133', 'tkuvalis@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (10, '1-818-651-06', '415 Swaniawski Court Suite 600\nKunzeland, MI 18779', 'rau.francisco@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (11, '405-036-7639', '68432 Bins Villages\nChazton, HI 39286', 'gwen11@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (12, '792-645-2056', '83239 Koelpin Road Suite 566\nLake Everettville, AL', 'glen28@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (13, '1-421-217-10', '267 Gerhold Glens\nLake Augustine, CA 87220-9451', 'connelly.dax@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (14, '(465)024-717', '9492 Waelchi Path\nNew Clementside, NC 59260-3575', 'jratke@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (15, '(267)164-578', '16999 Mercedes Pine Suite 978\nSipesfurt, ND 38621-', 'nola97@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (16, '+67(3)702181', '939 Douglas Glens Suite 593\nRobinfort, OH 41097', 'wilburn.mitchell@exa');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (17, '139.236.5345', '85820 Ali Fords\nRutherfordfurt, KS 19731', 'hilpert.hassie@examp');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (18, '1-961-096-82', '91219 Maryjane Ford\nEast Mayaview, SD 20643', 'mozelle.boyle@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (19, '1-271-120-30', '10857 Kozey Parkways\nNorth Anne, SC 43749-3357', 'gpurdy@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (20, '1-720-443-64', '3998 Predovic Spring\nLake Hosea, WI 00209', 'annalise40@example.c');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (21, '097-917-6896', '33605 Aurelio Valleys Apt. 031\nBalistreriside, PA ', 'lula.carroll@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (22, '816-738-5623', '1138 Hildegard Wall\nVerlachester, ME 89286', 'myra30@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (23, '(035)421-341', '3931 Satterfield Trail Suite 512\nEldaville, NJ 536', 'kenna.zieme@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (24, '336-156-5506', '263 Reichel Park\nPort Adell, MI 13353', 'theo.reilly@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (25, '+28(2)082418', '835 Nitzsche Radial\nEast Coopershire, MN 09016', 'kshlerin.nona@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (26, '(598)275-546', '68317 Glennie Plain\nHamillside, MT 69187', 'jamar.hodkiewicz@exa');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (27, '1-509-309-50', '515 Schneider Curve Apt. 865\nEast Katlynburgh, WV ', 'carolina.williamson@');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (28, '(761)687-850', '0859 Hertha Pass\nEmmittton, CA 42583', 'ocarter@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (29, '+50(6)448938', '57859 Gregoria Harbors Suite 299\nSouth Genovevamou', 'elaina55@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (30, '04323770405', '1725 VonRueden Place\nWest Lonshire, OH 39652', 'yrau@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (31, '(279)345-537', '557 Vandervort Shoals\nLeliaview, NV 21821-8603', 'tthiel@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (32, '08132030165', '25266 Cora Plain Suite 283\nEast Matteoton, MO 8652', 'jakubowski.arlie@exa');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (33, '961-407-4405', '55502 Gia Fords\nBeckermouth, WA 73873', 'van27@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (34, '569.988.2216', '4529 Luettgen Walks Suite 185\nWest Harleyport, HI ', 'kathlyn04@example.or');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (35, '1-136-677-39', '964 Gibson Roads Apt. 237\nWest Pierre, WV 07640', 'berge.bobbie@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (36, '504-751-6884', '35039 Billy Forge Suite 767\nNew Merlintown, IN 271', 'rogelio24@example.or');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (37, '08215230012', '3616 Erich Heights Apt. 960\nCarrollland, NV 31008-', 'chyatt@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (38, '119-048-5999', '186 Lakin Ford\nLake Orrinmouth, IA 35482-4247', 'zlemke@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (39, '943.938.1494', '4360 Gutkowski Harbor Suite 363\nWehnerfurt, WY 005', 'maxie.baumbach@examp');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (40, '(487)017-452', '4390 Cronin Walk Apt. 267\nEast Mackenzie, IL 67439', 'lbernier@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (41, '170-949-0052', '183 Koelpin Locks\nLueilwitzview, PA 14059-5156', 'ledner.beryl@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (42, '06121013848', '559 Veum Fields\nNorth Laishashire, UT 43400', 'rolson@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (43, '+86(6)620489', '3195 Skiles Square\nEast Marceloshire, MO 87949-083', 'makayla74@example.ne');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (44, '+78(7)835577', '6965 Wade Canyon Suite 169\nLake Cortney, RI 38635-', 'lharvey@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (45, '415.537.4277', '6708 Mayra Pine\nPort Kylie, MA 06335', 'collier.devan@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (46, '+97(1)441148', '82898 Hansen Drive Suite 948\nVolkmanport, NC 24812', 'ruth.bednar@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (47, '1-517-546-33', '39462 Jast Field Suite 874\nHillsside, IN 62406-936', 'yfeeney@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (48, '1-704-106-61', '086 Lemke Grove Apt. 364\nKileyfurt, ID 46468', 'btreutel@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (49, '146-349-3359', '246 Torp Terrace\nCarolview, OR 09123', 'linwood32@example.or');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (50, '1-769-720-40', '4370 Americo Crossing\nFerrytown, KS 51202-0980', 'corwin.eusebio@examp');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (51, '1-147-304-75', '02806 Toy Isle\nFredton, IN 54931', 'qhegmann@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (52, '04775815866', '96242 Metz Knoll\nRunolfsdottirshire, PA 57814-2743', 'bashirian.gilberto@e');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (53, '1-856-599-54', '60764 Lauretta Fork Apt. 157\nFarrellhaven, NH 2534', 'gwatsica@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (54, '1-053-530-26', '591 O\'Reilly Plaza\nWest Cathy, TX 94874-6343', 'xstanton@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (55, '512-384-7747', '20982 Brakus Courts\nMurraychester, MI 53606-7899', 'yschmidt@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (56, '(367)446-100', '077 Bergnaum Bypass\nPriceshire, NY 72167', 'bud44@example.org');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (57, '025.875.5183', '7793 Juana Estate\nSpencerstad, KS 52344-4018', 'huels.syble@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (58, '08181590276', '3281 Kuvalis Haven\nKraigfort, DE 64607', 'celine44@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (59, '302.302.0997', '0207 Heidi Loop Apt. 122\nEast Destini, SC 89983', 'lamont.christiansen@');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (60, '006.202.8759', '9216 Baumbach Union\nBeierfurt, GA 23275', 'keeling.louvenia@exa');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (61, '(472)068-377', '197 Anderson Summit Apt. 949\nKilbackshire, MT 2989', 'della26@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (62, '(222)206-292', '6208 Kerluke Isle Apt. 744\nNorth Jordon, NY 27637', 'verla.kohler@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (63, '+88(2)938758', '778 Wilhelmine Heights\nNorth Maryjane, NE 38093-54', 'wunsch.alisha@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (64, '1-237-691-34', '2676 Katarina Lodge Apt. 378\nPort Jewell, PA 67589', 'bbashirian@example.c');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (65, '+35(9)961344', '38609 Karley Creek\nJakestad, PA 93179-8633', 'wbogan@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (66, '835.595.1764', '70050 Fanny Shoal Suite 739\nNew Alessandroton, DC ', 'wava86@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (67, '1-776-501-73', '1696 Hettinger Place Suite 557\nWest Jessyca, DE 70', 'umertz@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (68, '1-518-265-88', '62739 Amya Islands Apt. 766\nSouth Euna, OK 11352-5', 'katrine16@example.or');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (69, '990-129-5538', '152 Christophe Prairie Suite 261\nReynoldsville, RI', 'alda36@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (70, '06312920881', '43452 Baron Parks\nRudyburgh, MO 71252-3489', 'arno.russel@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (71, '(823)499-711', '539 Daniel Forges\nEast Ross, TN 14402', 'darrick.jacobi@examp');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (72, '(244)493-766', '9282 Hartmann Plains Suite 488\nSouth Shanie, NE 69', 'feest.kallie@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (73, '236.139.1213', '599 Alfred River Apt. 137\nAldenfort, AR 43060', 'leannon.clara@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (74, '575-263-7604', '991 Carlotta Plains\nNorth Daisytown, VA 78501', 'josiane.dare@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (75, '324-202-0203', '8891 Simonis Cliff\nLake Louveniamouth, ND 65618', 'marlen35@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (76, '302-805-2334', '539 Nolan Forge\nBogisichberg, MS 22897-8964', 'nasir.hand@example.c');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (77, '(446)112-040', '164 Keira Prairie\nKutchland, CA 62585-6401', 'madelyn49@example.co');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (78, '+92(9)457136', '55773 Pollich Flat\nNorth Aureliefort, WV 95093-832', 'bret.maggio@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (79, '1-635-160-99', '08731 Olson Branch Apt. 877\nSouth Aniya, AZ 44055-', 'yadira15@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (80, '(922)898-570', '26110 Schaefer Center Suite 057\nGiovannahaven, RI ', 'sydnie13@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (81, '+39(2)391064', '8542 Ebert Summit Suite 432\nWest Lauryport, MO 883', 'wgoodwin@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (82, '+93(0)459569', '64699 Metz Alley\nCarlomouth, OK 09939', 'amya.kutch@example.c');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (83, '114-801-3504', '6546 Carmela Club\nSouth Karinachester, NY 05971-61', 'cleve.marks@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (84, '905-064-4352', '2844 Doyle Loop\nWest Minnie, OK 00564', 'madeline.vonrueden@e');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (85, '1-618-814-67', '0386 Hoeger Creek Suite 520\nPort Ibrahim, MS 96842', 'o\'reilly.otho@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (86, '(371)072-209', '11498 Katelyn Common\nNew Maxport, CT 13369-7919', 'paucek.joshua@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (87, '(780)237-571', '8179 Hilll Cove Apt. 860\nLake Jaidafurt, KS 92656', 'dwight.wisoky@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (88, '08260551491', '4156 Ross Garden Suite 891\nGrantfort, OH 29417-724', 'annabelle13@example.');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (89, '446-374-1161', '365 Bryce Ways\nDevynfurt, AL 38393', 'nat40@example.com');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (90, '(020)113-802', '14734 Oma Islands Apt. 887\nEast Hershel, GA 28718-', 'murphy.alena@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (91, '(174)673-878', '9671 Cleta Expressway\nLake Virginiachester, VA 584', 'georgianna32@example');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (92, '1-382-553-83', '526 Keebler Crossroad Apt. 187\nVolkmanville, WA 64', 'bruce.collins@exampl');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (93, '1-334-165-08', '31260 Tanya Islands Suite 444\nNew Evelynfurt, KS 3', 'kris.tate@example.or');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (94, '502-053-5426', '22040 Holly Common\nSchneidertown, LA 39192', 'sschimmel@example.co');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (95, '1-217-014-28', '58208 Trantow Ports\nNorth Efrainville, SC 93699', 'sanford.caroline@exa');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (96, '+24(8)604116', '02050 Boehm Landing\nSouth Enriquefurt, SD 08856-05', 'daphney31@example.or');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (97, '164.469.6949', '8074 Dooley Ford\nNorth Herminiahaven, MT 26324-976', 'gail71@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (98, '+09(8)808495', '21159 Cletus Glen\nVernershire, VA 93684-2514', 'eve.wunsch@example.o');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (99, '(342)490-922', '8310 Andre Station\nFermintown, RI 35004-5414', 'kayden00@example.net');
INSERT INTO `Client` (`Client_ID`, `Phone_Number`, `Address`, `Email`) VALUES (100, '099-482-1032', '996 Ivy Meadow\nTreutelbury, VT 80715', 'ipouros@example.com');


#
# TABLE STRUCTURE FOR: Dishe_Types
#

DROP TABLE IF EXISTS `Dishe_Types`;

CREATE TABLE `Dishe_Types` (
  `Menu_Date` date NOT NULL,
  `Dish_Type` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Dish_Order` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  KEY `Menu_Date` (`Menu_Date`),
  CONSTRAINT `Dishe_Types_ibfk_1` FOREIGN KEY (`Menu_Date`) REFERENCES `Menu` (`Menu_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1970-04-11', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1970-05-21', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1971-07-03', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1973-06-10', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1973-11-11', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1973-12-02', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1973-12-11', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1974-01-14', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1974-07-14', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1974-10-22', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1975-03-08', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1975-04-30', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1975-07-22', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1976-09-07', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1977-06-19', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1977-08-16', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1978-05-18', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1978-07-02', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1978-09-30', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1978-10-16', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1979-03-10', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1979-04-24', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1980-01-20', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1981-03-19', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1982-04-07', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1983-09-28', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1983-11-06', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1984-01-12', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1984-06-02', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1985-10-22', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1986-03-11', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1986-03-30', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1987-06-30', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1987-10-06', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1988-02-03', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1988-09-03', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1988-09-28', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1989-07-24', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1989-08-05', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1989-09-21', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1990-01-17', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1991-03-20', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1991-07-13', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1992-03-10', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1992-04-11', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1992-12-25', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1993-03-09', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1993-08-18', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1993-09-03', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1994-03-15', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1994-03-21', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1994-04-21', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1994-06-30', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1994-08-13', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1996-01-30', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1996-04-01', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1997-04-04', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1998-03-21', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1998-04-23', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1998-07-28', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1998-11-06', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1999-01-21', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('1999-04-01', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2000-07-28', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2000-11-30', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2000-12-24', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2001-01-21', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2001-03-14', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2002-05-17', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2003-05-25', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2004-07-16', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2005-09-26', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2006-06-27', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2006-08-10', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2008-06-12', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2008-06-13', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2008-08-25', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2009-06-03', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2009-09-25', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2010-02-14', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2010-02-17', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2010-02-24', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2010-11-26', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2011-06-20', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2011-08-12', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2011-12-27', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2012-08-20', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2012-11-12', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2013-12-14', 'Side Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2014-04-03', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2014-04-25', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2014-05-20', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2014-07-05', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2014-07-30', 'Side Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2015-02-21', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2015-03-10', 'Main Dishes', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2016-04-05', 'Dessert', ' Second Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2016-07-25', 'Dessert', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2016-09-13', 'Main Dishes', 'First Dish');
INSERT INTO `Dishe_Types` (`Menu_Date`, `Dish_Type`, `Dish_Order`) VALUES ('2018-09-21', 'Side Dishes', 'First Dish');


#
# TABLE STRUCTURE FOR: Daily_Menu
#

DROP TABLE IF EXISTS `Daily_Menu`;

CREATE TABLE `Daily_Menu` (
  `Menu_Date` date NOT NULL,
  `Dish_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Dish_Price` float NOT NULL,
  `Dish_Desciption` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  KEY `Menu_Date` (`Menu_Date`),
  CONSTRAINT `Daily_Menu_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Chef` (`Employee_ID`),
  CONSTRAINT `Daily_Menu_ibfk_2` FOREIGN KEY (`Menu_Date`) REFERENCES `Menu` (`Menu_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1970-04-11', 'consectetur', '67701200', 'HAVE tasted eggs, certainly,\' said Alice, and tried to open her mouth; but she remembered having seen such a noise inside, no one else seemed inclined to say it over) \'--yes, that\'s about the right.', 0);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1970-05-21', 'consequatur', '342350000', 'Cheshire Cat sitting on a little of her sister, who was gently brushing away some dead leaves that had fluttered down from the shock of being upset, and their curls got entangled together. Alice was.', 1);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1971-07-03', 'fugiat', '0', 'There was no \'One, two, three, and away,\' but they began moving about again, and she grew no larger: still it was just saying to her that she was coming back to the Mock Turtle sighed deeply, and.', 2);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1973-06-10', 'sed', '107.37', 'M?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation. \'Oh, you\'re sure to do it! Oh dear! I wish you could.', 3);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1973-11-11', 'voluptatem', '5014', 'Five, \'and I\'ll tell you how it was a large ring, with the clock. For instance, if you like,\' said the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, sir\' said Alice, \'but I haven\'t had a large.', 4);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1973-12-02', 'eos', '512248', 'Alice could hardly hear the rattle of the bread-and-butter. Just at this moment the King, the Queen, who was reading the list of the window, and on it but tea. \'I don\'t much care where--\' said.', 5);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1973-12-11', 'et', '8139750', 'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Nothing WHATEVER?\' persisted the King. The next thing was to twist it up into the air off all its feet at the end of the suppressed.', 6);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1974-01-14', 'pariatur', '0.568315', 'Duchess asked, with another dig of her voice, and see what would be four thousand miles down, I think--\' (for, you see, as they were filled with cupboards and book-shelves; here and there. There was.', 7);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1974-07-14', 'tenetur', '117.6', 'Alice to find herself talking familiarly with them, as if a fish came to ME, and told me you had been (Before she had to kneel down on her lap as if she was looking down with wonder at the righthand.', 8);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1974-10-22', 'iste', '4433260', 'Alice gently remarked; \'they\'d have been changed for any of them. \'I\'m sure those are not attending!\' said the March Hare took the watch and looked at it, busily painting them red. Alice thought she.', 9);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1975-03-08', 'est', '2728270', 'VERY long claws and a long and a bright idea came into her eyes--and still as she added, to herself, \'Why, they\'re only a pack of cards: the Knave of Hearts, he stole those tarts, And took them.', 10);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1975-04-30', 'veniam', '0.51444', 'Queen\'s shrill cries to the Mock Turtle. \'Very much indeed,\' said Alice. \'Nothing WHATEVER?\' persisted the King. (The jury all brightened up again.) \'Please your Majesty,\' said Two, in a tone of.', 11);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1975-07-22', 'cumque', '14933400', 'However, this bottle does. I do it again and again.\' \'You are not the smallest notice of her own ears for having missed their turns, and she sat on, with closed eyes, and half believed herself in a.', 12);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1976-09-07', 'aut', '363.022', 'SAID was, \'Why is a raven like a telescope.\' And so it was quite tired of this. I vote the young lady tells us a story!\' said the Duck: \'it\'s generally a frog or a serpent?\' \'It matters a good way.', 13);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1977-06-19', 'ullam', '97261.7', 'And mentioned me to him: She gave me a pair of boots every Christmas.\' And she began shrinking directly. As soon as she had gone through that day. \'A likely story indeed!\' said Alice, who had.', 14);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1977-08-16', 'provident', '478.526', 'They all sat down in an impatient tone: \'explanations take such a nice soft thing to get through was more and more faintly came, carried on the breeze that followed them, the melancholy words:--.', 15);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1978-05-18', 'reprehenderit', '0', 'Majesty,\' said Alice a good way off, and Alice was very nearly getting up and to wonder what Latitude or Longitude either, but thought they were lying round the court was in managing her flamingo:.', 16);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1978-07-02', 'eius', '0', 'THE KING AND QUEEN OF HEARTS. Alice was not much larger than a real nose; also its eyes again, to see if she were saying lessons, and began to cry again, for she felt a very poor speaker,\' said the.', 17);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1978-09-30', 'expedita', '540826', 'I should think!\' (Dinah was the White Rabbit with pink eyes ran close by it, and found herself falling down a very little use, as it settled down in a great crash, as if he doesn\'t begin.\' But she.', 18);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1978-10-16', 'debitis', '193.903', 'I don\'t take this child away with me,\' thought Alice, \'as all the children she knew the right thing to eat her up in spite of all the first really clever thing the King said to the Knave of Hearts,.', 19);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1979-03-10', 'neque', '53.4936', 'I wish you would seem to put his shoes on. \'--and just take his head contemptuously. \'I dare say you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice indignantly. \'Let me alone!\'.', 20);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1979-04-24', 'voluptas', '1789.85', 'Alice, thinking it was very like a writing-desk?\' \'Come, we shall get on better.\' \'I\'d rather finish my tea,\' said the Dodo solemnly presented the thimble, saying \'We beg your pardon,\' said Alice.', 21);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1980-01-20', 'asperiores', '33736', 'Father William,\' the young lady tells us a story!\' said the Hatter. \'Nor I,\' said the Dormouse into the open air. \'IF I don\'t know what \"it\" means.\' \'I know what a wonderful dream it had fallen into.', 22);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1981-03-19', 'ut', '7.20292', 'Queen jumped up on to her ear, and whispered \'She\'s under sentence of execution.\' \'What for?\' said the Caterpillar. This was quite pleased to find any. And yet you incessantly stand on your head--.', 23);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1982-04-07', 'ullam', '3', 'I\'m not Ada,\' she said, \'for her hair goes in such confusion that she ought not to be true): If she should chance to be listening, so she went on eagerly: \'There is such a capital one for catching.', 24);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1983-09-28', 'facere', '175.4', 'Alice very meekly: \'I\'m growing.\' \'You\'ve no right to grow here,\' said the Duchess. \'I make you grow taller, and the three gardeners, but she got up, and there they are!\' said the Duchess, \'as pigs.', 25);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1983-11-06', 'et', '0', 'Alice and all that,\' he said in a sort of use in waiting by the White Rabbit returning, splendidly dressed, with a pair of gloves and a large piece out of his shrill little voice, the name \'W..', 26);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1984-01-12', 'laudantium', '4866650', 'ME, and told me he was in confusion, getting the Dormouse went on, taking first one side and up the other, looking uneasily at the bottom of a good deal until she made it out to sea!\" But the snail.', 27);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1984-06-02', 'corporis', '15.05', 'Dormouse said--\' the Hatter hurriedly left the court, arm-in-arm with the dream of Wonderland of long ago: and how she would gather about her any more HERE.\' \'But then,\' thought Alice, \'or perhaps.', 28);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1985-10-22', 'et', '877116', 'The Hatter opened his eyes were looking over their heads. She felt that it would not join the dance. So they couldn\'t see it?\' So she went to school in the same thing,\' said the Mock Turtle, \'Drive.', 29);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1986-03-11', 'repudiandae', '558740000', 'Alice went on, taking first one side and up the little dears came jumping merrily along hand in hand with Dinah, and saying to herself \'Now I can guess that,\' she added in a sulky tone; \'Seven.', 30);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1986-03-30', 'aut', '57.6307', 'Alice, who was gently brushing away some dead leaves that had slipped in like herself. \'Would it be of very little way out of his head. But at any rate: go and live in that poky little house, and.', 31);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1987-06-30', 'dolores', '12601300', 'French mouse, come over with fright. \'Oh, I beg your pardon!\' she exclaimed in a solemn tone, only changing the order of the game, the Queen ordering off her head!\' the Queen ordering off her.', 32);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1987-10-06', 'consequatur', '29', 'But the insolence of his tail. \'As if it thought that SOMEBODY ought to be an old crab, HE was.\' \'I never heard of such a tiny golden key, and Alice\'s elbow was pressed so closely against her foot,.', 33);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1988-02-03', 'aut', '357744', 'THAT like?\' said Alice. \'Then you should say what you mean,\' said Alice. \'Come on, then!\' roared the Queen, who were giving it something out of their hearing her; and the other side, the puppy.', 34);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1988-09-03', 'sed', '20894.9', 'The Rabbit started violently, dropped the white kid gloves and the pair of white kid gloves while she remembered having seen such a puzzled expression that she knew she had not attended to this.', 35);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1988-09-28', 'distinctio', '0', 'Which shall sing?\' \'Oh, YOU sing,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he spoke, \'we were trying--\' \'I see!\' said the Gryphon: and it was too dark to see if he had to.', 36);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1989-07-24', 'nihil', '5.62332', 'I was going to give the hedgehog to, and, as they lay sprawling about, reminding her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the Queen. \'You make me giddy.\' And then,.', 37);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1989-08-05', 'ut', '591.767', 'Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, timidly; \'some of the way I want to see it trot away quietly into the court, arm-in-arm with the lobsters to the Duchess: \'what a clear way.', 38);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1989-09-21', 'quo', '0', 'Nobody moved. \'Who cares for you?\' said the Mock Turtle. So she set the little creature down, and felt quite strange at first; but she was quite tired of being such a simple question,\' added the.', 39);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1990-01-17', 'et', '70020.2', 'Soo--oop! Soo--oop of the jurymen. \'No, they\'re not,\' said the King. \'When did you call it purring, not growling,\' said Alice. \'Well, then,\' the Cat went on, \'if you only kept on good terms with.', 40);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1991-03-20', 'libero', '0', 'This was quite pleased to find that she never knew whether it was only too glad to find that she wasn\'t a bit hurt, and she had put the Lizard in head downwards, and the Panther were sharing a.', 42);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1991-07-13', 'voluptatem', '13887.7', 'Mock Turtle in the world you fly, Like a tea-tray in the same size for ten minutes together!\' \'Can\'t remember WHAT things?\' said the Hatter. He came in sight of the March Hare said--\' \'I didn\'t!\'.', 43);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1992-03-10', 'soluta', '0.867615', 'We must have a prize herself, you know,\' Alice gently remarked; \'they\'d have been a holiday?\' \'Of course you don\'t!\' the Hatter grumbled: \'you shouldn\'t have put it in time,\' said the Eaglet. \'I.', 44);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1992-04-11', 'voluptate', '63104000', 'I hadn\'t cried so much!\' said Alice, surprised at this, that she had known them all her life. Indeed, she had peeped into the court, she said to herself, \'the way all the time it vanished quite.', 45);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1992-12-25', 'nostrum', '13189.7', 'Alice; and Alice was not going to happen next. First, she tried hard to whistle to it; but she felt certain it must be getting somewhere near the right thing to get out again. Suddenly she came upon.', 46);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1993-03-09', 'asperiores', '27770', 'Bill! I wouldn\'t say anything about it, you may SIT down,\' the King put on his knee, and the baby--the fire-irons came first; then followed a shower of saucepans, plates, and dishes. The Duchess.', 47);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1993-08-18', 'et', '339412', 'No, it\'ll never do to hold it. As soon as she went out, but it said nothing. \'Perhaps it hasn\'t one,\' Alice ventured to taste it, and behind it, it occurred to her ear, and whispered \'She\'s under.', 48);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1993-09-03', 'et', '30.878', 'Alice. \'Off with their fur clinging close to her ear. \'You\'re thinking about something, my dear, and that makes them so shiny?\' Alice looked down at her side. She was a good way off, and had to run.', 49);
INSERT INTO `Daily_Menu` (`Menu_Date`, `Dish_Name`, `Dish_Price`, `Dish_Desciption`, `Employee_ID`) VALUES ('1994-03-15', 'nam', '34687200', 'Alice; \'it\'s laid for a conversation. \'You don\'t know one,\' said Alice. \'Come, let\'s try Geography. London is the same thing, you know.\' \'I DON\'T know,\' said Alice, a little startled by seeing the.', 50);


#
# TABLE STRUCTURE FOR: Delivery_Boy
#

DROP TABLE IF EXISTS `Delivery_Boy`;

CREATE TABLE `Delivery_Boy` (
  `Employee_ID` int(11) NOT NULL,
  `Shift` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `Delivery_Boy_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (0, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (1, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (2, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (3, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (4, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (5, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (6, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (7, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (8, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (9, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (10, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (11, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (12, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (13, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (14, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (15, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (16, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (17, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (18, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (19, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (20, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (21, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (22, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (23, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (24, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (25, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (26, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (27, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (28, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (29, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (30, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (31, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (32, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (33, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (34, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (35, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (36, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (37, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (38, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (39, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (40, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (42, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (43, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (44, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (45, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (46, 'Morning');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (47, 'Night');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (48, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (49, 'Midnight');
INSERT INTO `Delivery_Boy` (`Employee_ID`, `Shift`) VALUES (50, 'Midnight');


#
# TABLE STRUCTURE FOR: Employee
#

DROP TABLE IF EXISTS `Employee`;

CREATE TABLE `Employee` (
  `Employee_ID` int(11) NOT NULL,
  `Name` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Phone_Number` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `National_ID` char(25) COLLATE utf8_unicode_ci NOT NULL,
  `Military_Status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone_Number` (`Phone_Number`),
  UNIQUE KEY `National_ID` (`National_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (0, 'minima', 'skiles.kellen@exampl', '1-733-796-67', 'Qui et optio cumque qui t', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (1, 'voluptatem', 'crooks.nichole@examp', '682.490.9859', 'Et accusamus officiis fug', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (2, 'aut', 'mhills@example.org', '(055)299-229', 'Voluptatum expedita quo v', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (3, 'dicta', 'egreen@example.net', '(775)453-649', 'Incidunt molestiae hic mo', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (4, 'sunt', 'sipes.godfrey@exampl', '575.671.1365', 'Repellendus tempore a ape', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (5, 'soluta', 'verona17@example.org', '1-852-242-04', 'Modi ullam excepturi libe', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (6, 'labore', 'luciano.kohler@examp', '(169)338-732', 'Omnis voluptatem et et vo', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (7, 'dolores', 'hudson.margaretta@ex', '1-745-878-86', 'Voluptates iste inventore', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (8, 'delectus', 'fyundt@example.net', '387-602-7863', 'Corrupti aut accusantium', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (9, 'laborum', 'eweissnat@example.ne', '039-177-9104', 'Sit aperiam doloremque to', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (10, 'eos', 'victoria.hills@examp', '475.754.9910', 'Ut dolores voluptas sed.', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (11, 'distinctio', 'lindgren.betty@examp', '004.683.2969', 'Quos omnis et enim repudi', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (12, 'sapiente', 'stone.rowe@example.o', '03748413244', 'Ratione unde amet minus d', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (13, 'et', 'estevan87@example.co', '166-116-0448', 'Porro cupiditate porro it', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (14, 'aspernatur', 'nico.beer@example.co', '1-508-091-75', 'Officia perspiciatis dolo', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (15, 'molestiae', 'mathias.pouros@examp', '1-350-855-57', 'Nulla aut vero omnis volu', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (16, 'perferendi', 'white.may@example.ne', '1-062-391-41', 'Maiores ab at dolor magna', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (17, 'et', 'iturcotte@example.or', '815.303.6376', 'Possimus magni et nihil a', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (18, 'nam', 'michele.rohan@exampl', '1-195-135-01', 'Doloremque vel est iusto', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (19, 'nam', 'bryce87@example.org', '844.706.8734', 'Tempora earum enim culpa', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (20, 'modi', 'edmond.bins@example.', '359-443-0672', 'Architecto neque rerum qu', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (21, 'enim', 'heathcote.isac@examp', '06287351313', 'Id exercitationem et maio', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (22, 'optio', 'candace.parisian@exa', '(437)117-796', 'Deleniti omnis illum quis', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (23, 'adipisci', 'kristopher39@example', '341.854.8994', 'Ipsum et quisquam dolores', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (24, 'officia', 'cole28@example.com', '343-430-2081', 'Similique magnam esse hic', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (25, 'nulla', 'myra03@example.com', '554-079-4133', 'Asperiores ducimus maxime', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (26, 'nesciunt', 'mayert.obie@example.', '09124005479', 'Inventore iure quae magna', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (27, 'nihil', 'kerluke.brittany@exa', '1-692-267-96', 'Alias commodi harum est n', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (28, 'sapiente', 'hpredovic@example.co', '1-055-837-60', 'Asperiores quod quas est', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (29, 'laudantium', 'jprosacco@example.co', '(076)725-661', 'Eveniet doloremque sint d', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (30, 'qui', 'homenick.virgil@exam', '011-200-1976', 'Fugit ipsam ducimus beata', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (31, 'dolores', 'adrianna24@example.n', '569-805-7979', 'Earum rerum ullam molesti', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (32, 'eligendi', 'frami.darien@example', '1-105-657-68', 'Est minus et fuga est.', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (33, 'doloremque', 'msanford@example.net', '1-546-976-09', 'Illum enim mollitia est t', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (34, 'odio', 'emard.jayson@example', '705-384-9458', 'Eligendi voluptate dolori', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (35, 'sunt', 'ankunding.wilburn@ex', '1-011-796-57', 'Aut autem alias cum quasi', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (36, 'voluptas', 'padberg.cara@example', '(620)233-866', 'Ratione itaque dolores si', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (37, 'rerum', 'zita96@example.com', '(524)005-472', 'Sequi temporibus voluptat', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (38, 'libero', 'fisher.brigitte@exam', '1-051-339-04', 'Nihil aspernatur quia est', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (39, 'quidem', 'morris33@example.org', '1-500-896-89', 'Est dolor autem eum quide', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (40, 'dolor', 'dejon86@example.org', '(274)507-243', 'Inventore illo et numquam', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (42, 'veniam', 'nayeli22@example.net', '1-955-335-68', 'Et ut doloremque modi asp', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (43, 'ut', 'fkuphal@example.net', '973-811-6835', 'Laborum possimus velit eo', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (44, 'recusandae', 'littel.lavern@exampl', '926.881.4417', 'Dolor aspernatur temporib', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (45, 'tenetur', 'dietrich.gudrun@exam', '086-560-7917', 'Magnam et consequatur et', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (46, 'vel', 'daron40@example.com', '(805)393-380', 'Repudiandae quibusdam ear', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (47, 'voluptatem', 'khodkiewicz@example.', '+00(5)451032', 'Voluptatem quidem quis id', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (48, 'corporis', 'flatley.demarco@exam', '586.512.7087', 'Soluta suscipit aliquam c', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (49, 'quis', 'judge.leffler@exampl', '137-372-8120', 'Est libero asperiores vol', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (50, 'optio', 'hauck.myrl@example.c', '918.220.8100', 'Rerum quisquam consequunt', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (51, 'repellat', 'powlowski.brycen@exa', '+21(0)486797', 'Magni ut libero dolorem a', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (52, 'earum', 'franco83@example.net', '+55(7)227479', 'Excepturi quaerat aliquam', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (53, 'ea', 'yundt.tess@example.n', '322.680.2505', 'Voluptatem quam est verit', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (54, 'id', 'boyle.alivia@example', '1-177-225-72', 'Autem aut necessitatibus', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (55, 'quaerat', 'uriel.hessel@example', '+05(6)702227', 'Nihil sunt suscipit nemo', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (56, 'quisquam', 'ramon36@example.org', '564-615-7968', 'Quia eos repudiandae fuga', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (57, 'perspiciat', 'mtorphy@example.net', '00921275368', 'Aperiam repudiandae sequi', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (58, 'tempora', 'irving.jacobson@exam', '01625561061', 'Et doloremque impedit exc', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (59, 'libero', 'jeff.bruen@example.o', '+55(6)977805', 'Quam veniam exercitatione', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (60, 'blanditiis', 'deborah23@example.co', '060-679-2514', 'Laborum quidem nihil quib', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (61, 'vel', 'carey.watsica@exampl', '(126)065-694', 'Dicta et nihil voluptas q', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (62, 'et', 'ybuckridge@example.o', '307-069-4765', 'Debitis pariatur modi imp', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (63, 'dignissimo', 'sadie11@example.com', '704-661-5395', 'Quo consequuntur voluptat', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (64, 'ipsa', 'dimitri.fadel@exampl', '(878)412-011', 'Magni autem eligendi elig', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (65, 'facilis', 'dasia97@example.net', '(132)446-171', 'Facilis vel quam dicta ul', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (66, 'voluptas', 'aubrey.hoeger@exampl', '011.101.1313', 'Optio labore est enim mol', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (67, 'dolorem', 'hnikolaus@example.ne', '193.478.7125', 'Suscipit voluptatem ipsam', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (68, 'veniam', 'ruth.abernathy@examp', '043-429-1513', 'Eligendi atque mollitia a', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (69, 'explicabo', 'lhagenes@example.net', '+95(2)452387', 'Architecto nobis nostrum', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (70, 'aliquid', 'emmitt05@example.org', '657-807-0661', 'Architecto quis voluptate', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (71, 'in', 'renner.kale@example.', '920-887-6825', 'Mollitia architecto et do', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (72, 'ratione', 'willa02@example.net', '+34(6)965137', 'Ea voluptates rerum repre', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (73, 'illum', 'mac.kilback@example.', '350-441-7330', 'Labore delectus voluptate', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (74, 'itaque', 'christiansen.isidro@', '(622)272-685', 'Minus facilis qui rerum q', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (75, 'animi', 'xpurdy@example.com', '(819)895-399', 'Dolorum et recusandae har', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (76, 'voluptas', 'ned38@example.net', '02838568005', 'Est reiciendis harum aut', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (77, 'non', 'dorcas73@example.net', '637-055-7902', 'Aspernatur autem dolorem', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (78, 'excepturi', 'mromaguera@example.n', '08917837570', 'Ut officiis qui architect', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (79, 'eos', 'ptorp@example.com', '1-387-936-97', 'Consequuntur porro sit vo', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (80, 'fuga', 'dbecker@example.com', '(729)865-510', 'Labore molestiae vitae ex', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (81, 'ducimus', 'wilbert.romaguera@ex', '1-343-065-14', 'Dicta odio sed enim quas.', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (82, 'repellat', 'qcartwright@example.', '403-026-1741', 'Qui consequuntur nihil qu', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (83, 'odio', 'josiah92@example.net', '1-051-942-50', 'Alias et error odit non n', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (84, 'quod', 'viva.kuphal@example.', '288.952.2705', 'Odio ducimus qui architec', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (85, 'et', 'silas65@example.org', '326-797-1402', 'Est culpa sed quia delect', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (86, 'vel', 'eunice.spinka@exampl', '1-361-168-25', 'Officiis voluptatem quia', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (87, 'numquam', 'deven85@example.org', '(958)532-955', 'Adipisci minima aut qui l', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (88, 'quaerat', 'fcole@example.org', '602.482.4693', 'Asperiores magnam incidun', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (89, 'minus', 'mayer.desmond@exampl', '(377)555-302', 'Et sunt omnis doloremque', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (90, 'ducimus', 'bbernier@example.org', '824.227.3009', 'Molestiae odio sint occae', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (91, 'suscipit', 'marcelino36@example.', '860.266.6983', 'Rerum et qui delectus ut', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (92, 'tempora', 'everardo20@example.n', '1-489-390-87', 'Aspernatur consectetur ut', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (93, 'praesentiu', 'holly29@example.org', '706-801-8047', 'Dolorem nemo impedit aliq', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (94, 'est', 'carrie34@example.com', '(278)898-821', 'Quo nam eum laborum ut di', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (95, 'ea', 'd\'amore.peyton@examp', '(320)247-012', 'Consectetur eius error qu', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (96, 'sed', 'wyman.beulah@example', '265-890-0069', 'Tempore est maiores asper', 'Done Army Service');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (97, 'aperiam', 'kailey.schinner@exam', '296.655.4252', 'Rerum eligendi voluptatem', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (98, 'nihil', 'jconroy@example.net', '353-488-8699', 'Sunt id cum optio eum ame', 'Don\'\'t Have Army Ser');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (99, 'rerum', 'metz.rosemarie@examp', '(192)264-138', 'Ratione ut corrupti nisi', 'Army Reserve');
INSERT INTO `Employee` (`Employee_ID`, `Name`, `Email`, `Phone_Number`, `National_ID`, `Military_Status`) VALUES (100, 'rerum', 'lstanton@example.net', '(181)142-162', 'Ducimus fugit dignissimos', 'Done Army Service');


#
# TABLE STRUCTURE FOR: Menu
#

DROP TABLE IF EXISTS `Menu`;

CREATE TABLE `Menu` (
  `Menu_Date` date NOT NULL,
  `Side_Dishes` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Price` float NOT NULL,
  `Desciption` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Menu_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1970-04-11', 'Optio enim rem nam omnis velit.', '7.16287', 'Dignissimos assumenda et exercitationem dolor voluptas ut id ad. Et maiores similique assumenda poss');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1970-05-21', 'Praesentium qui sit hic eaque ipsam.', '585241000', 'Tempora tempore molestiae molestiae iste. Sed voluptatem est laudantium dolore temporibus eaque qui.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1971-07-03', 'Earum autem adipisci ducimus maxime facilis quibusdam omnis.', '2.31', 'Incidunt est voluptatem dolor aut similique dolor facere. Maiores sed voluptas officiis dolorem. Odi');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1973-06-10', 'Illo maiores repellat nobis explicabo quaerat fugit.', '2305370', 'Voluptatem qui nihil vel in sit. Ipsum est eveniet qui magnam. Quasi totam eligendi odit possimus.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1973-11-11', 'Doloribus repellendus laboriosam ut.', '18894200', 'Rerum ducimus sint rerum nisi alias deleniti. Harum sed optio dolor quidem ipsam nostrum. Sint aliqu');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1973-12-02', 'Voluptas rem dolorem reiciendis autem nam sit.', '1.89824', 'Mollitia autem dolorem sit esse sint non. Ut est iusto dicta voluptatem dolores quas earum. Labore e');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1973-12-11', 'Dolores et earum ut.', '10428500', 'Doloribus placeat et aliquam asperiores enim quis quis. Ea odio aut et nam facere. Sit ea at et enim');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1974-01-14', 'Neque ex quam natus aut et hic vel.', '1144470', 'Rerum esse voluptas adipisci laboriosam error pariatur possimus. Voluptatem ut nulla qui itaque ut i');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1974-07-14', 'Autem sunt dolore eligendi.', '530902', 'Eius rerum ut quisquam sequi sit quos eum. Qui velit officiis est delectus minima quam fuga. Quia of');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1974-10-22', 'Quia optio dolores sed ut animi minus inventore.', '3221.19', 'Sit voluptatem quia omnis architecto laborum voluptas dolor et. Consequatur rerum ex nesciunt provid');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1975-03-08', 'Ut beatae exercitationem sint nihil molestiae officia error.', '4826.82', 'In placeat tempora qui ut repellat aut quo. Dolores odit ullam neque deleniti praesentium est velit ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1975-04-30', 'Reiciendis ea eveniet ea alias ut.', '0', 'Laboriosam odio dolorum voluptatibus est quo molestiae. Nostrum adipisci est reprehenderit consequat');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1975-07-22', 'Voluptas est aliquid fugiat rerum consequuntur.', '445.518', 'Ipsam dolor qui voluptatibus hic. Aliquam aut consequatur sunt facilis.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1976-09-07', 'Vitae dolores sint suscipit ut labore.', '15', 'Eum harum deleniti sit est assumenda qui est. Facilis atque aut dicta distinctio. Ea amet repellat i');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1977-06-19', 'Doloribus iusto quis voluptatem sit.', '24.32', 'Id vero non error rerum architecto quis qui. Illo porro sit velit doloremque molestiae alias nisi. F');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1977-08-16', 'Et dicta et est cum fugit pariatur consequatur minus.', '0', 'Veniam ipsam pariatur eligendi ullam ut unde facere. Modi nihil dolorem animi aspernatur velit hic v');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1978-05-18', 'Quia quae voluptatem rerum molestiae quis.', '0', 'Possimus ut aliquam consequatur saepe. Vel hic fugit consequatur sapiente veritatis voluptatum. Quia');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1978-07-02', 'Quibusdam qui nihil adipisci debitis.', '22531', 'Facere ab a consequatur minima. Illo nobis qui earum eum quia blanditiis.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1978-09-30', 'Explicabo numquam aut sed esse in iusto.', '425.9', 'Omnis et aut neque beatae hic. Autem impedit atque eveniet aliquid totam sed quia. Nobis at saepe du');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1978-10-16', 'Nihil sunt cumque possimus cumque voluptatibus aut.', '3.68109', 'Omnis dolor quisquam omnis omnis facere sequi. Libero veritatis sed et veniam. Omnis aut recusandae ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1979-03-10', 'Aut et aperiam vel ipsum libero suscipit et incidunt.', '7968.87', 'Eveniet dignissimos et et necessitatibus ut non. Et nulla nesciunt consequatur ab quis ut. Est sit d');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1979-04-24', 'Velit deserunt distinctio aut neque voluptates.', '15839.3', 'Sunt dolore est repellendus et placeat. Suscipit porro dignissimos porro. Quia vitae ut ex asperiore');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1980-01-20', 'Sunt veritatis excepturi officia autem consequuntur.', '588428', 'Aspernatur dolorem exercitationem numquam ut officiis illum odit. Eveniet odit a aut.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1981-03-19', 'Est non quidem voluptas quia.', '32.802', 'Delectus itaque sed delectus qui ut harum explicabo. Nemo voluptas illo amet neque placeat voluptate');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1982-04-07', 'Assumenda a aliquam sit possimus incidunt.', '5', 'Temporibus non eos non eos fugiat. Totam odit nostrum nihil officia voluptatum doloremque molestias ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1983-09-28', 'Deleniti laudantium et itaque quo dolore tempora.', '94322.4', 'Deserunt est in voluptate consectetur officia ea voluptatum. Doloremque asperiores eos vel facere pe');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1983-11-06', 'Dolore dolorum minus dolorem est magni.', '2508840', 'Non animi sed accusamus qui sapiente. Officiis et quia temporibus iusto voluptatem. Libero quisquam ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1984-01-12', 'Exercitationem quis molestias illo.', '394673', 'Alias omnis minus non est quod molestiae. Illum assumenda animi quasi voluptas natus. Quo cumque lab');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1984-06-02', 'Eos sed sit et.', '17.353', 'Qui sapiente voluptas ipsa dolorem sequi exercitationem corporis nobis. Non inventore corporis ut in');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1985-10-22', 'Ut facilis molestias facere earum sapiente dolores voluptas.', '11.9497', 'Corporis expedita quod odit quis delectus voluptatum. Aut vel architecto nemo vel quod. Hic eos mole');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1986-03-11', 'Odio vitae ut ut soluta ab quas consectetur facilis.', '1928220', 'Temporibus et perspiciatis ab itaque veniam voluptatem. Soluta et sapiente temporibus praesentium po');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1986-03-30', 'Quae possimus magni deserunt.', '420307', 'Est soluta suscipit sunt natus aperiam voluptas ex velit. Omnis eos ducimus doloribus quo.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1987-06-30', 'Debitis quia dolores eligendi et minus facere.', '100499', 'Velit itaque asperiores cumque rem. Eius et illo cum quasi aut rerum maxime. Magnam eius rerum sed p');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1987-10-06', 'Ipsum aut quisquam excepturi id.', '58497.8', 'Beatae sed dolor quos aut. Velit ut quidem commodi et expedita nostrum dolorem. Aliquid animi alias ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1988-02-03', 'Quibusdam harum veritatis omnis vero assumenda magnam aperiam.', '42.1296', 'Laborum cum repellat alias occaecati. Quos ut dolor architecto possimus a qui.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1988-09-03', 'Eos quisquam quibusdam possimus labore et rerum est.', '3.11228', 'Explicabo beatae asperiores reiciendis itaque est est quia. Commodi ut sed nobis fugit eaque blandit');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1988-09-28', 'Temporibus occaecati deleniti fugit sit totam iure.', '1.88453', 'Tempora perferendis quis qui dicta quis voluptatibus. Laboriosam non minima ut. Esse id earum maiore');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1989-07-24', 'Eum qui vel dolorem dolores.', '4795470', 'Qui aliquid consequuntur non odit. Animi ea nam possimus saepe consectetur et dolorem. Dolor at quib');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1989-08-05', 'Temporibus molestiae odit aliquid aspernatur quos labore quas est.', '309.909', 'Iure incidunt dolorum enim est quis sunt modi. Eum quam delectus et et numquam assumenda temporibus.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1989-09-21', 'Nulla quam est ut est.', '472.797', 'Aliquam dolorem perspiciatis itaque quia quas hic. Facilis nam quia iusto dicta quam rerum quia labo');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1990-01-17', 'Reprehenderit quia qui porro quas distinctio dolor ex.', '125.861', 'Est non illum dolores quia nobis quae id. Dolore est recusandae est repudiandae nobis sed. Et autem ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1991-03-20', 'Asperiores fugit occaecati deleniti nobis quam.', '7453200', 'Sequi odit voluptate aliquid. Veniam eius ipsum error quia excepturi aut. Officiis aut minus aperiam');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1991-07-13', 'Quis sit soluta est doloremque deleniti temporibus.', '0', 'Libero eum qui non qui. Velit nam non minima exercitationem aut exercitationem aliquid dolorum. Corp');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1992-03-10', 'Magnam omnis sapiente ut deserunt tempore animi.', '699.61', 'Ea earum modi et minus. Rerum molestiae eos quasi debitis est non modi. Totam illum qui labore ut.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1992-04-11', 'In qui eligendi labore molestiae ipsum voluptatibus sit libero.', '173.168', 'Consequatur debitis fugit officiis adipisci quae culpa. Doloremque quae ut architecto pariatur ut no');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1992-12-25', 'Minima maxime saepe architecto modi necessitatibus.', '8.01', 'Aut et dolore dignissimos laudantium quisquam aliquam et maxime. Est rerum ab excepturi commodi dolo');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1993-03-09', 'Reprehenderit placeat ratione est praesentium.', '176170000', 'Sit dolor possimus sunt. Beatae omnis aut est rerum accusantium. Neque vitae voluptatem inventore de');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1993-08-18', 'Velit et qui optio qui.', '751871', 'In sunt culpa aut. Earum ut et tenetur et. Sunt consequatur non quia cumque sit debitis rem.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1993-09-03', 'Corrupti aut qui delectus dolorum quae.', '0', 'Id est nam dolorum ipsum quia atque porro provident. Sed consectetur et facilis consequuntur ratione');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1994-03-15', 'Harum commodi deleniti reprehenderit molestiae at ullam.', '8.72227', 'Reprehenderit quo dicta aut natus eos sed hic ex. Animi quisquam ipsa veritatis est est eligendi. Qu');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1994-03-21', 'Tempore et quo alias dolor.', '92922000', 'Quia quae molestiae non est amet ut consequatur. Dolorum eligendi atque vel esse similique. Sint eos');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1994-04-21', 'Et ab doloribus blanditiis vel est corrupti omnis.', '194.139', 'Saepe illum expedita ipsam unde corporis et voluptatem. Eius earum et voluptas. Optio voluptates ea ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1994-06-30', 'Incidunt occaecati voluptatem ipsa ut sed.', '2366140', 'Ipsam eum dolorum exercitationem reiciendis modi. Quia rerum dolor magnam blanditiis. Et eos sapient');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1994-08-13', 'Aut et quasi ab totam vero ex veritatis voluptates.', '27428900', 'Error unde laudantium id ut natus. Ad quia sint cupiditate sequi quod voluptatem. Voluptatem error c');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1996-01-30', 'Maxime eveniet minus a laborum provident adipisci atque.', '12046', 'Dolore quidem similique culpa est vel quibusdam. Beatae dolorem magni qui laboriosam corrupti nesciu');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1996-04-01', 'Consectetur voluptatem dolor alias quasi.', '101', 'Temporibus est omnis explicabo in perspiciatis ipsa qui. Ipsum at ut eos vero tempore. Culpa et arch');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1997-04-04', 'Dolor id rerum ad similique ipsa.', '2075.74', 'Quas sunt est pariatur. Cupiditate voluptas non fuga voluptas provident aut.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1998-03-21', 'Eveniet quidem sapiente recusandae.', '785.261', 'Error et minus ratione et molestiae et. Aut commodi ut et. Alias eius commodi quae aut nostrum expli');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1998-04-23', 'Aut voluptas incidunt exercitationem.', '2784560', 'Rerum ut deleniti temporibus delectus mollitia deleniti. Exercitationem placeat unde in rerum enim. ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1998-07-28', 'Dolor ab blanditiis officia et omnis qui molestiae.', '0', 'Quis eius esse quia labore. Ipsum distinctio nesciunt aut. Eligendi esse quas incidunt aut voluptas.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1998-11-06', 'Sit consequatur id nam quasi qui.', '259.779', 'Sequi commodi neque nostrum consequatur ad sed consequatur. Et distinctio cumque dolorem. Rerum natu');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1999-01-21', 'Possimus fugiat voluptates quam qui.', '93.2941', 'Commodi quia quidem numquam tenetur consectetur et ea iusto. Id sit vero aut esse quisquam accusanti');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('1999-04-01', 'Rerum veritatis dicta aperiam natus neque provident consectetur autem.', '2514', 'Et numquam pariatur incidunt tempore qui. Iste occaecati dolores qui rem. Beatae pariatur possimus r');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2000-07-28', 'Sit quibusdam quos doloremque officia.', '0', 'Et repellendus et eligendi omnis ad. Facere ipsum dolorem sed. Non cumque dolores quibusdam sunt vol');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2000-11-30', 'Repudiandae in ratione nisi enim.', '166.779', 'Rerum quasi enim consectetur ut pariatur ea. Veniam magni sint totam architecto nobis ab. Esse corpo');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2000-12-24', 'Rem iure sint repellat praesentium pariatur voluptate voluptas.', '3.69881', 'Quos consequuntur et quo inventore incidunt quia distinctio sit. Qui et et omnis eius impedit molest');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2001-01-21', 'Tempora quisquam eligendi veniam voluptatem.', '0.005', 'Quaerat quae corrupti et aut dignissimos autem sunt. Dolores qui nihil neque minus odio. Enim illo u');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2001-03-14', 'Dolor vel est et quisquam.', '29975.7', 'Aliquid nesciunt qui ex non ab laboriosam ipsam. At molestiae ut modi quia in. A repellendus magni h');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2002-05-17', 'Totam minus non commodi laboriosam rerum totam sit.', '45.374', 'Unde culpa adipisci consectetur velit. Assumenda fugit facere vitae excepturi soluta. Incidunt volup');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2003-05-25', 'Eum enim quod quaerat sequi.', '35612200', 'Perspiciatis odio qui autem fugit odit id culpa. Est ex quaerat voluptas corrupti accusantium nihil.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2004-07-16', 'Velit dolores qui iusto ut quis.', '67.27', 'Earum deleniti omnis esse natus dolores doloremque fugit. Architecto sed aut architecto vitae laboru');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2005-09-26', 'Asperiores corporis temporibus aut saepe ut totam.', '0', 'Ut velit aliquam sit doloribus. Cumque dolorem non aut reprehenderit. Repellendus in consequuntur ei');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2006-06-27', 'Delectus error et labore ratione ullam.', '257.435', 'Quia necessitatibus natus hic nulla. Eos qui occaecati rerum sed. Perspiciatis voluptas et dolor.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2006-08-10', 'Perferendis rerum et est ut dolorum voluptate.', '261490', 'Expedita voluptatem perferendis quo. Sint qui aut quam consequatur voluptatem velit ut.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2008-06-12', 'Molestiae et et omnis aut.', '2226690', 'Excepturi architecto praesentium illo. Maiores libero vel et ut aut soluta. Ducimus veniam ullam et ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2008-06-13', 'Ea architecto et officiis animi molestias occaecati ut.', '458.518', 'Est omnis voluptatem perspiciatis id. Et laborum ut voluptatem similique. Id accusamus qui qui rerum');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2008-08-25', 'Rerum et quis ullam minus repudiandae aut fugiat consequatur.', '19376700', 'Eum illum deleniti in fuga maxime aut repellat. Et deleniti nihil quam ut. Vel dignissimos tempora e');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2009-06-03', 'Nisi explicabo minus ut velit nisi.', '0', 'Unde totam consequatur ut fugiat consequatur et fugiat consectetur. Repellat cum modi id est vel par');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2009-09-25', 'Amet nobis est sit id asperiores unde.', '11125600', 'Nemo ipsa delectus asperiores tempora. Iste et nisi ut quia. Ea aliquam excepturi doloribus ut place');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2010-02-14', 'Voluptate sunt in aut et tempore natus.', '509557', 'Odio doloribus mollitia occaecati nemo minima ea error. Ipsum quia et ut quibusdam qui. Saepe rerum ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2010-02-17', 'Ut modi voluptatum et.', '6542170', 'Beatae minima velit est sit eum voluptatem et. Placeat quos corporis dolor nihil suscipit molestiae.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2010-02-24', 'Omnis sit rerum et.', '33675200', 'Ut consequatur nihil quibusdam earum facere praesentium in. Vel voluptate quae non distinctio alias.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2010-11-26', 'Illo nulla iusto unde ea nisi assumenda a.', '7.16557', 'A ipsum quas delectus dolorem. Molestias beatae beatae autem magnam. Quisquam quo itaque eos et. Nat');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2011-06-20', 'Beatae eos nihil cupiditate in.', '1', 'Debitis consequatur tempore aut. Accusamus praesentium tempore unde. Possimus reprehenderit dolorum ');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2011-08-12', 'Dolores eum deserunt libero nihil sapiente nemo amet deleniti.', '4788.6', 'Nesciunt modi beatae ipsa cum quae aut. Velit harum vel beatae voluptas. Aperiam iusto non rerum mag');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2011-12-27', 'Ducimus recusandae rem voluptates sint sapiente.', '3433.81', 'Non voluptas molestias nulla et totam vitae. Doloremque est sed corporis mollitia qui. Error molliti');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2012-08-20', 'In soluta sed veritatis et animi.', '114504000', 'Sit quod sequi rerum fuga. Minus rerum doloremque eos iusto ea totam. Id quod ea et cum neque provid');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2012-11-12', 'Itaque et aut et est et aut.', '101677', 'Voluptas voluptatem vitae doloremque odit quod illo animi. Quos enim ratione et. In ipsa fugiat simi');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2013-12-14', 'Rerum pariatur dolorem quos dolores quo eos ipsam.', '30664.5', 'Aut vero et rerum. Quaerat veniam ut rem aperiam. Et rerum minima iusto quia et explicabo mollitia q');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2014-04-03', 'Sunt recusandae aspernatur aut nesciunt.', '35', 'Modi sed molestiae dicta aut quod inventore. Provident et ut repellat.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2014-04-25', 'Repellat doloremque est adipisci.', '3.23978', 'Amet libero fugiat impedit officia. Eius aperiam officiis et sint. Numquam nihil nostrum et aut esse');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2014-05-20', 'Sequi nulla officiis deleniti et.', '1531480', 'Quis dolores et amet officiis. Iure laudantium est maiores et consectetur itaque aspernatur. Aut ull');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2014-07-05', 'Inventore vel natus facilis.', '223.379', 'Maxime nihil vel ut assumenda ea rerum nesciunt. Vero et omnis omnis illum ipsum repudiandae volupta');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2014-07-30', 'In natus et neque sint.', '11181.1', 'Eum quae vel rerum culpa blanditiis qui suscipit. Non quaerat sapiente et saepe delectus. Quisquam q');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2015-02-21', 'Veniam voluptate dolorem voluptate sit odit dolore.', '0', 'Voluptatibus quaerat deserunt odio repellendus. Illum soluta minima rerum.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2015-03-10', 'Dolorum molestias nobis quia laboriosam.', '18317700', 'Cumque aliquid quis aut. Aperiam harum omnis rerum voluptas qui maiores. Dolores iure cum autem quos');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2016-04-05', 'Sint eum et rerum unde.', '1604.11', 'Aut quas incidunt sit totam incidunt. Repellat at commodi ipsum reiciendis quidem consequatur rerum.');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2016-07-25', 'Consequatur similique laborum blanditiis.', '2424.88', 'Sed adipisci eligendi eos neque in libero accusamus minima. Ea laboriosam qui ullam vero veniam reru');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2016-09-13', 'Veniam in illum autem.', '3137410', 'Ipsa sapiente nam eaque et non delectus omnis. Optio adipisci natus est libero consectetur est susci');
INSERT INTO `Menu` (`Menu_Date`, `Side_Dishes`, `Price`, `Desciption`) VALUES ('2018-09-21', 'Sunt ipsa quia velit.', '3405.93', 'Cupiditate dolor laborum impedit voluptates quam culpa ut. Dolorum id facilis accusantium impedit. S');


#
# TABLE STRUCTURE FOR: Order_History
#

DROP TABLE IF EXISTS `Order_History`;

CREATE TABLE `Order_History` (
  `Feedback` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Client_ID` int(11) NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  KEY `Order_ID` (`Order_ID`),
  KEY `Client_ID` (`Client_ID`),
  KEY `Employee_ID` (`Employee_ID`),
  CONSTRAINT `Order_History_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `Submited_Order` (`Order_ID`),
  CONSTRAINT `Order_History_ibfk_2` FOREIGN KEY (`Client_ID`) REFERENCES `Client` (`Client_ID`),
  CONSTRAINT `Order_History_ibfk_3` FOREIGN KEY (`Employee_ID`) REFERENCES `Delivery_Boy` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Why, it fills the whole court was a general chorus of voices asked. \'Why, SHE, of course,\' he said t', 0, 1, 0);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('March Hare said to herself \'Now I can find them.\' As she said this, she looked up eagerly, half hopi', 1, 2, 1);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Lory positively refused to tell me your history, she do.\' \'I\'ll tell it her,\' said the Caterpillar. ', 2, 3, 2);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Mock Turtle. \'And how many hours a day or two: wouldn\'t it be of very little way out of sight before', 3, 4, 3);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Rabbit coming to look at it!\' This speech caused a remarkable sensation among the bright flower-beds', 4, 5, 4);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('CHAPTER VI. Pig and Pepper For a minute or two sobs choked his voice. \'Same as if she did not see an', 5, 6, 5);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('White Rabbit, who said in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I', 6, 7, 6);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('I\'d only been the whiting,\' said the King, the Queen, and Alice, were in custody and under sentence ', 7, 8, 7);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Alice indignantly, and she at once and put back into the garden. Then she went on. \'We had the dish ', 8, 9, 8);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('King, and the other ladder?--Why, I hadn\'t cried so much!\' said Alice, in a great hurry. An enormous', 9, 10, 9);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('It was the King; and the sounds will take care of themselves.\"\' \'How fond she is of mine, the less t', 10, 11, 10);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('The hedgehog was engaged in a deep voice, \'are done with a T!\' said the Queen, tossing her head pres', 11, 12, 11);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Alice, who was talking. Alice could hardly hear the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOA', 12, 13, 12);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Cat. \'--so long as there seemed to be managed? I suppose I ought to be lost, as she was now about a ', 13, 14, 13);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('I don\'t keep the same thing with you,\' said the March Hare. Alice sighed wearily. \'I think you could', 14, 15, 14);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Mock Turtle said with some severity; \'it\'s very rude.\' The Hatter shook his head mournfully. \'Not I!', 15, 16, 15);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('And she\'s such a thing as \"I eat what I say,\' the Mock Turtle had just begun \'Well, of all her life.', 16, 17, 16);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Alice, and looking at everything that Alice said; but was dreadfully puzzled by the way of speaking ', 17, 18, 17);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Caterpillar. \'Well, perhaps not,\' said the Duchess, \'and that\'s a fact.\' Alice did not get hold of a', 18, 19, 18);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Queen. \'Their heads are gone, if it had lost something; and she walked off, leaving Alice alone with', 19, 20, 19);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('I\'m not Ada,\' she said, \'for her hair goes in such a wretched height to rest her chin upon Alice\'s s', 20, 21, 20);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('MINE.\' The Queen had only one way up as the doubled-up soldiers were always getting up and repeat \"\'', 21, 22, 21);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('You grant that?\' \'I suppose they are the jurors.\' She said the Cat, \'a dog\'s not mad. You grant that', 22, 23, 22);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('The baby grunted again, so she helped herself to about two feet high, and was going to begin with.\' ', 23, 24, 23);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('I\'ve often seen a rabbit with either a waistcoat-pocket, or a serpent?\' \'It matters a good deal unti', 24, 25, 24);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('MUST be more to be Number One,\' said Alice. \'Why not?\' said the cook. \'Treacle,\' said the others. \'A', 25, 26, 25);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('She was walking by the officers of the sense, and the reason they\'re called lessons,\' the Gryphon sa', 26, 27, 26);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the King', 27, 28, 27);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Mock Turtle a little house in it a bit, if you wouldn\'t have come here.\' Alice didn\'t think that pro', 28, 29, 28);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('King very decidedly, and he went on, spreading out the answer to it?\' said the Duchess: you\'d better', 29, 30, 29);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Footman remarked, \'till tomorrow--\' At this the White Rabbit read out, at the bottom of the guinea-p', 30, 31, 30);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('So they couldn\'t see it?\' So she went on without attending to her; \'but those serpents! There\'s no p', 31, 32, 31);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('An enormous puppy was looking at the proposal. \'Then the words don\'t FIT you,\' said Alice, as she ca', 32, 33, 32);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('VERY deeply with a pair of gloves and the pattern on their throne when they saw Alice coming. \'There', 33, 34, 33);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Duchess: you\'d better leave off,\' said the Duchess: \'and the moral of that dark hall, and wander abo', 34, 35, 34);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('I\'m afraid, but you might do something better with the time,\' she said to the shore. CHAPTER III. A ', 35, 36, 35);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('There was exactly the right words,\' said poor Alice, who felt very curious sensation, which puzzled ', 36, 37, 36);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('I\'ll try and say \"How doth the little door: but, alas! either the locks were too large, or the key w', 37, 38, 37);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('A little bright-eyed terrier, you know, and he went on, looking anxiously about her. \'Oh, do let me ', 38, 39, 38);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('I\'ll tell you my adventures--beginning from this side of WHAT?\' thought Alice to herself. (Alice had', 39, 40, 39);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('That WILL be a very respectful tone, but frowning and making faces at him as he spoke. \'A cat may lo', 40, 41, 40);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('You know the way the people that walk with their heads off?\' shouted the Queen. \'Their heads are gon', 41, 42, 42);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('King hastily said, and went on: \'But why did they live on?\' said the Cat, \'a dog\'s not mad. You gran', 42, 43, 43);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Alice was only a pack of cards: the Knave of Hearts, who only bowed and smiled in reply. \'That\'s rig', 43, 44, 44);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Alice; \'you needn\'t be afraid of them!\' \'And who is Dinah, if I might venture to say \'creatures,\' yo', 44, 45, 45);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Oh dear! I\'d nearly forgotten that I\'ve got to the Knave. The Knave shook his grey locks, \'I kept al', 45, 46, 46);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Alice had been jumping about like mad things all this time. \'I want a clean cup,\' interrupted the Ha', 46, 47, 47);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('But her sister on the twelfth?\' Alice went on again:-- \'You may go,\' said the King. \'It began with t', 47, 48, 48);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('Cat. \'--so long as you can--\' \'Swim after them!\' screamed the Pigeon. \'I can hardly breathe.\' \'I can', 48, 49, 49);
INSERT INTO `Order_History` (`Feedback`, `Order_ID`, `Client_ID`, `Employee_ID`) VALUES ('She felt that it was addressed to the Classics master, though. He was looking about for them, and th', 49, 50, 50);


#
# TABLE STRUCTURE FOR: Restaurent
#

DROP TABLE IF EXISTS `Restaurent`;

CREATE TABLE `Restaurent` (
  `Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Employee_ID` int(11) NOT NULL,
  `Menu_Date` date NOT NULL,
  `Order_ID` int(11) NOT NULL,
  PRIMARY KEY (`Name`,`Address`),
  KEY `Order_ID` (`Order_ID`),
  KEY `Employee_ID` (`Employee_ID`),
  KEY `Menu_Date` (`Menu_Date`),
  CONSTRAINT `Restaurent_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `Submited_Order` (`Order_ID`),
  CONSTRAINT `Restaurent_ibfk_2` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`),
  CONSTRAINT `Restaurent_ibfk_3` FOREIGN KEY (`Menu_Date`) REFERENCES `Menu` (`Menu_Date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('accusantium', '56161 Weissnat Spurs Apt. 267\nLebsackchester, OH 6', 29, '1985-10-22', 29);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('architecto', '277 Pollich Greens\nLake Nils, ID 99335-1943', 40, '1990-01-17', 40);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('atque', '26677 Evelyn Corner Apt. 059\nNorth Niko, ND 03291-', 26, '1983-11-06', 26);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('aut', '3846 Bode Island Apt. 150\nFeilfurt, OH 97953', 32, '1987-06-30', 32);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('autem', '838 Lilla Brooks\nSouth Marlinhaven, DC 08370', 20, '1979-03-10', 20);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('consequatur', '9257 Jast Village\nKeshawnmouth, KY 00352', 34, '1988-02-03', 34);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('consequuntur', '642 Ignatius Viaduct Suite 542\nLegrosview, IL 5722', 36, '1988-09-28', 36);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('corrupti', '1993 Wuckert Key\nShainaton, MA 96310', 11, '1975-04-30', 11);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('cum', '15793 Douglas Park\nNew Zaneside, WA 42493', 6, '1973-12-11', 6);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('cumque', '87507 Watsica Pines\nKobemouth, NJ 86941-3236', 27, '1984-01-12', 27);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('dicta', '6409 Bergnaum Landing Apt. 792\nSouth Nigelfurt, DE', 46, '1992-12-25', 45);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('distinctio', '029 Tromp Forges\nSouth Dashawnview, VA 38524-4101', 50, '1994-03-15', 49);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('doloremque', '90258 Theresa Lake Suite 817\nBertrandland, IN 4183', 13, '1976-09-07', 13);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('dolores', '251 Pagac Lodge\nNew Marcellefurt, WY 87432-2057', 38, '1989-08-05', 38);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('earum', '532 Burnice Orchard\nGloverland, AK 88519', 44, '1992-03-10', 43);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('eos', '8301 Schamberger Hills\nLake Lori, CO 74855-7834', 7, '1974-01-14', 7);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('est', '9787 Janice Ferry\nSchoenton, RI 14225', 47, '1993-03-09', 46);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('et', '2987 Dion Village Suite 256\nCadenbury, AZ 36476-28', 0, '1970-04-11', 0);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('ex', '13222 Dolly Burgs Suite 594\nLake Sadie, WV 23915-4', 22, '1980-01-20', 22);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('facere', '948 Schamberger Mountains\nJaniyaside, WI 74092-848', 35, '1988-09-03', 35);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('harum', '0809 Darren Oval Suite 680\nIvahton, TX 85893', 28, '1984-06-02', 28);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('impedit', '420 Romaguera Mountains\nJoshview, ME 84916', 12, '1975-07-22', 12);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('in', '773 Sigurd Union Suite 545\nSouth Boris, AK 45498-0', 37, '1989-07-24', 37);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('iste', '11396 Candace Drives\nConnland, MD 25568-1421', 9, '1974-10-22', 9);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('iure', '488 Cecile Burg Apt. 409\nWest Enolaborough, NH 728', 16, '1978-05-18', 16);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('nihil', '63856 Rogahn Haven\nEast Jarrett, IL 08747-4573', 2, '1971-07-03', 2);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('nostrum', '74057 Sage Greens\nKochmouth, SC 03376', 43, '1991-07-13', 42);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('numquam', '080 Cassandre Roads Apt. 767\nWinfieldside, NE 2339', 14, '1977-06-19', 14);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('odio', '5822 Greenholt Mountain Apt. 403\nLake Audreanne, N', 31, '1986-03-30', 31);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('officiis', '884 Wilfred Knolls Apt. 721\nCorkeryfurt, OH 68537-', 25, '1983-09-28', 25);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('omnis', '68217 Eloisa Plaza Suite 294\nCasperborough, AZ 071', 10, '1975-03-08', 10);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('quas', '67314 Torphy Island Suite 742\nLuciusville, ND 4586', 39, '1989-09-21', 39);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('qui', '364 Hintz Springs Apt. 682\nEast Emmamouth, MD 3937', 15, '1977-08-16', 15);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('quia', '8180 Delpha Mountains\nKossfurt, MA 21120-7718', 3, '1973-06-10', 3);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('quibusdam', '4135 Stamm Forges\nLake Nicholeberg, KY 47185-1589', 17, '1978-07-02', 17);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('reiciendis', '740 Eileen Trail\nEast Adalbertoton, SD 82174-7726', 48, '1993-08-18', 47);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('rem', '82975 Ziemann Square Apt. 156\nPort Rosa, KY 10164', 45, '1992-04-11', 44);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('sed', '180 Damion Spur\nPort Glenda, MD 60107-3936', 24, '1982-04-07', 24);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('sit', '525 Howell Springs\nNorth Laurentown, IL 47225-9325', 33, '1987-10-06', 33);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('sunt', '7750 Lebsack Plains\nRusselmouth, PA 39352', 8, '1974-07-14', 8);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('tempore', '37571 Ally Rapids Apt. 817\nEast Hayliechester, NC ', 4, '1973-11-11', 4);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('totam', '005 Ward Shores\nEast Michelview, WA 06211-8153', 30, '1986-03-11', 30);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('ut', '790 Carmella Locks Apt. 593\nSouth Citlalli, SD 941', 5, '1973-12-02', 5);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('velit', '46729 Sporer Union Apt. 927\nPort Tamarafurt, OR 18', 42, '1991-03-20', 41);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('veritatis', '621 Shaniya Fords\nEast Jackiestad, HI 82060', 21, '1979-04-24', 21);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('vero', '3783 Lucinda Ramp Apt. 113\nPort Ianport, CO 46596', 19, '1978-10-16', 19);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('voluptas', '4006 Nola Mission\nSouth Efrainberg, IL 29154', 18, '1978-09-30', 18);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('voluptatem', '207 Lia Trace\nLake Madisenside, PA 57763-9576', 1, '1970-05-21', 1);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('voluptatibus', '08757 Vandervort Cove Suite 491\nNorth Gladys, GA 9', 49, '1993-09-03', 48);
INSERT INTO `Restaurent` (`Name`, `Address`, `Employee_ID`, `Menu_Date`, `Order_ID`) VALUES ('voluptatum', '6898 Earlene Mountains\nSouth Montanaborough, DE 98', 23, '1981-03-19', 23);


#
# TABLE STRUCTURE FOR: Submited_Order
#

DROP TABLE IF EXISTS `Submited_Order`;

CREATE TABLE `Submited_Order` (
  `Order_ID` int(11) NOT NULL,
  `Order_Date` date NOT NULL,
  `Order_Status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Order_Items` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `Order_Time` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Order_Address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Client_ID` int(11) NOT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `Client_ID` (`Client_ID`),
  CONSTRAINT `Submited_Order_ibfk_1` FOREIGN KEY (`Client_ID`) REFERENCES `Client` (`Client_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (0, '1984-06-25', 'Eos est al', 'Amet ab rerum molestiae. Et mollitia optio quod corporis.', 'sed', '28703 McKenzie Vista Suite 687', 5);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (1, '1996-04-11', 'Et eos aut', 'Ex provident repellendus eligendi ab sequi iure. Voluptatem et suscipi', 'voluptatem', '1466 Hintz Via', 77);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (2, '1983-05-12', 'Magni eos ', 'Quo rerum autem illum omnis. Sit tempora voluptate vel facilis omnis n', 'itaque', '3228 Lonnie Courts', 20);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (3, '2015-04-16', 'Dolor sunt', 'Omnis repellendus quod dolores. Quos voluptatum eaque qui aliquid volu', 'voluptas', '747 Johns Ramp', 38);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (4, '1975-05-16', 'Iusto inci', 'Totam et nihil quia sint asperiores est et omnis. Fugit ut excepturi a', 'unde', '58710 Willis Lakes Apt. 424', 25);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (5, '2009-10-23', 'Est est re', 'Quos vero voluptate quae autem sed blanditiis voluptate nihil. Invento', 'quo', '212 Angel Gateway Suite 227', 16);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (6, '1973-08-03', 'Itaque rec', 'Quo quia qui tenetur vero quo. Exercitationem consequuntur tenetur vit', 'architecto', '9271 Graham Pines', 70);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (7, '2019-03-07', 'Aliquam na', 'Laudantium et modi unde expedita voluptatem et. Accusamus aut eligendi', 'repudianda', '83118 Sporer Landing', 8);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (8, '1986-01-20', 'Excepturi ', 'Vitae repellat non in autem odio voluptatem natus. Aperiam eos occaeca', 'inventore', '22052 Rempel Rue', 33);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (9, '1984-06-19', 'Distinctio', 'Cumque consequuntur ducimus adipisci non laborum veniam autem. Nostrum', 'esse', '3206 Hipolito Mission Apt. 520', 97);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (10, '1999-08-19', 'Maxime qua', 'Veniam impedit iure et repellendus minus veniam rerum. Qui tempore est', 'corporis', '233 West Shore Suite 048', 75);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (11, '2003-07-11', 'Sit offici', 'Tempora molestiae reprehenderit quis sunt. Nisi rerum at dolore quidem', 'voluptate', '55537 Henriette Pine', 57);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (12, '1986-11-25', 'Repudianda', 'Qui saepe impedit enim culpa enim. Dolor quasi aut sunt non non impedi', 'quidem', '731 Marjory Causeway', 22);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (13, '1975-05-27', 'Rerum haru', 'Impedit officiis voluptatem eum animi. Iure perspiciatis qui necessita', 'labore', '6140 Smitham Path Suite 435', 64);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (14, '2003-09-14', 'Perspiciat', 'Cum aut mollitia voluptate. Odio nesciunt voluptatibus dolorem. Ea acc', 'quia', '9620 Brant Square Suite 143', 35);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (15, '2011-08-06', 'Ut facilis', 'Optio repudiandae sunt molestias unde consequuntur dolorem. Soluta ape', 'tempore', '86660 Kertzmann Tunnel', 74);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (16, '1987-05-31', 'Perferendi', 'Enim expedita quidem enim. Labore voluptatem fugiat animi totam et. Ve', 'labore', '1282 Luella Place', 41);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (17, '1983-06-09', 'Exercitati', 'Et aut totam occaecati ut dolorum. Temporibus saepe sint ut atque faci', 'doloribus', '84314 Dorthy Route Apt. 039', 95);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (18, '1983-10-29', 'Cumque ear', 'Sint velit labore excepturi maxime eius beatae est. Inventore sit sit ', 'qui', '23646 Reichert Inlet', 76);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (19, '1978-12-16', 'Est praese', 'Rerum et ad a sed consequatur accusamus debitis impedit. Id non dolor ', 'quod', '363 Ibrahim Mews Suite 165', 84);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (20, '1988-12-10', 'Temporibus', 'Dolor et magni in laborum. A quisquam ratione animi voluptatibus natus', 'et', '11476 Rae Cliff Suite 101', 72);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (21, '2005-08-12', 'Iusto mole', 'Vel eius voluptatem recusandae omnis in. Exercitationem ratione nobis ', 'nam', '628 Weissnat Cape', 44);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (22, '1997-05-07', 'Quasi temp', 'Iste laboriosam saepe sunt quis nihil. Culpa magnam ad aut perferendis', 'vel', '249 Harris Ranch', 1);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (23, '2003-02-17', 'Ex adipisc', 'Laudantium molestias qui et consequatur corporis sit est quidem. Deser', 'vero', '8019 Rosalind Shore', 91);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (24, '1974-06-19', 'Sint velit', 'Similique doloremque ea blanditiis occaecati nulla pariatur. Odit quia', 'repudianda', '188 Pfeffer Trail Apt. 309', 49);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (25, '1985-08-04', 'Dolorum et', 'Totam fugiat illum sapiente et rem qui. Dignissimos odit autem officii', 'reiciendis', '02586 Hammes Dam', 19);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (26, '1987-03-20', 'Cupiditate', 'Corporis voluptas sed est sapiente et. Unde ut et qui voluptas consect', 'asperiores', '64770 Kemmer Summit Apt. 225', 69);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (27, '1971-09-22', 'Id natus i', 'Amet aut deleniti molestias. Ut sint reprehenderit molestias sed eum i', 'vero', '14690 Abshire Run Suite 063', 26);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (28, '1996-06-10', 'Eveniet er', 'Eveniet quia molestias officiis recusandae veniam eligendi et. Eum nih', 'molestiae', '00328 Kiehn Roads', 71);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (29, '1990-11-09', 'Enim delen', 'Distinctio tenetur nemo consectetur voluptas aut dicta rem earum. Cum ', 'aliquam', '8845 Oberbrunner Coves Suite 199', 93);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (30, '1982-06-02', 'Velit reru', 'Fuga rerum porro eius dolorum. Nemo voluptate maxime sunt error. Unde ', 'excepturi', '9850 Ezra Rapids', 15);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (31, '1991-05-24', 'Ad eos exe', 'Quo illum aut et fugit aut. Aspernatur odio nesciunt debitis sed sed. ', 'dolor', '34646 Brown Plaza Apt. 388', 100);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (32, '2008-08-25', 'Distinctio', 'Soluta commodi quos ut asperiores. Et ut eius tempora veniam aut qui. ', 'magni', '98801 Dandre Spurs Suite 442', 9);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (33, '2014-04-19', 'Impedit od', 'Quos recusandae illum a. Corrupti dolor doloribus aliquam. Porro nulla', 'occaecati', '790 Olga Plain', 86);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (34, '2006-04-17', 'Et aut asp', 'Rerum et optio sed. Et sunt aut odio aut. Tenetur similique laboriosam', 'dolorem', '0576 Brown Ridges', 56);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (35, '1989-12-28', 'Sunt magna', 'Et sint alias sed molestias quaerat quo id. Consequatur suscipit quo m', 'ex', '11801 Leslie Oval', 79);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (36, '1971-12-03', 'Molestiae ', 'Veritatis et et maxime. Perspiciatis voluptatem ea voluptas dolores. S', 'est', '91844 Hansen Land', 27);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (37, '2011-09-25', 'Deleniti a', 'Eos dolorum labore excepturi totam facere aut facilis. Laudantium ut v', 'error', '3094 Keegan Trafficway Suite 669', 23);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (38, '1973-01-03', 'In sit lib', 'Quasi voluptatum magni non suscipit et. Repellat occaecati autem perfe', 'voluptatem', '13617 Barry Glen Suite 651', 30);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (39, '1983-01-14', 'Nisi dolor', 'Rem quis et autem magni. Commodi itaque ad laborum dolorem et. Deserun', 'et', '646 Koss Crossing', 68);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (40, '1978-11-30', 'Qui hic fu', 'Aliquam et aut eos a. Repellendus et maxime sunt consequatur error. Ex', 'debitis', '32040 Pfannerstill Village', 46);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (41, '1977-10-15', 'Natus sit ', 'Et qui deserunt voluptas sequi non ad facilis. Dolor aut omnis dolorib', 'iure', '2132 Considine Squares', 17);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (42, '1974-08-26', 'Facilis ne', 'Minus consequatur ratione eos. Et tenetur ea error accusamus mollitia.', 'accusantiu', '28158 Xander Crescent', 78);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (43, '1985-05-30', 'Quia ratio', 'Et nesciunt maiores aut ducimus dolor. Quia ullam nostrum repellendus ', 'explicabo', '388 Wuckert Village Apt. 385', 90);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (44, '1991-07-27', 'Quisquam a', 'Saepe nulla voluptatem iusto sed. Porro distinctio qui cum minima volu', 'neque', '3695 Terry Road Suite 059', 51);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (45, '1994-10-30', 'Autem reru', 'Fugit nulla non ad quaerat. Earum aspernatur quo delectus dolor rerum ', 'qui', '95419 Ari Branch', 89);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (46, '1994-09-28', 'Non tenetu', 'Magnam quo eum ipsa qui nemo autem velit occaecati. Non quidem ab dolo', 'nam', '5663 Santos Burg', 92);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (47, '1997-08-18', 'Rerum pari', 'Soluta nostrum sunt dolorum sed ducimus numquam saepe. Molestiae rerum', 'aut', '1787 Paolo Streets', 73);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (48, '1973-02-21', 'Molestiae ', 'Pariatur vero consequatur autem quo accusamus et. Et amet deserunt sin', 'porro', '637 Leffler Neck', 85);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (49, '2007-06-18', 'Nostrum ut', 'Placeat distinctio repellendus numquam consequatur qui. Dolores qui do', 'dolore', '2459 Runte Vista', 28);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (50, '1987-04-30', 'Omnis ut f', 'Qui ipsam minima et iste expedita ut labore. Omnis minus odit in ratio', 'velit', '81248 Wilhelm Mills', 43);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (51, '1996-04-15', 'Dolores do', 'Aut quia placeat dolor at. Aspernatur quia est neque ut saepe et. Et q', 'magni', '97809 Kayli Squares', 83);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (52, '2003-01-06', 'Incidunt c', 'Quidem vitae vero et at amet cumque. Dolor optio molestiae consequatur', 'id', '64834 Bosco Inlet', 21);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (53, '2005-10-06', 'Itaque ita', 'Perferendis eum soluta qui ad aperiam saepe qui. Voluptatibus nulla at', 'consectetu', '23429 Kunze Pine', 67);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (54, '2015-11-23', 'Unde ut om', 'Delectus laudantium eos sint nemo culpa. Minima molestiae laborum quid', 'soluta', '388 Alvah Villages', 39);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (55, '1977-11-11', 'Deleniti p', 'Earum voluptas sed ipsum temporibus. Magnam cumque dolores unde volupt', 'a', '45238 Vivianne Loaf', 63);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (56, '1999-09-30', 'Non est ma', 'Et sed possimus ut. Et eum enim voluptatum iure quia. Officiis perfere', 'voluptas', '911 Kelsi Falls', 88);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (57, '2008-03-19', 'Sequi exer', 'Consequatur minima quia itaque. Omnis molestiae qui amet ratione volup', 'non', '67447 O\'Keefe Neck Suite 512', 11);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (58, '1971-06-03', 'Eos fuga e', 'Aspernatur aliquid ea dolorem. Dolor architecto voluptatem nulla error', 'qui', '6242 Melba Haven', 12);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (59, '2011-11-05', 'Ut quia co', 'Facere aperiam numquam quia et sed unde porro. Et eaque illo porro. Qu', 'eius', '6780 Kiley Inlet', 10);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (60, '2017-08-20', 'Pariatur u', 'Facilis blanditiis voluptatibus quasi perspiciatis dolores voluptatum.', 'ut', '431 Stokes Estates', 45);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (61, '1983-04-09', 'Iure quibu', 'Aut voluptatem deserunt aut laborum corrupti enim. Iste inventore sed ', 'quidem', '8462 Lueilwitz Lakes', 99);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (62, '1979-08-29', 'Temporibus', 'Aut consectetur rerum enim explicabo ea. Ullam nemo et aut nisi aut as', 'voluptas', '608 Altenwerth Flats Suite 454', 47);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (63, '1999-08-07', 'Voluptas m', 'Sed accusamus voluptas in quia amet. Accusantium qui commodi suscipit ', 'est', '4763 Hermiston Drive Suite 915', 80);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (64, '1991-01-23', 'Asperiores', 'Vitae nam exercitationem tempora voluptate. Accusantium aut nihil in a', 'assumenda', '51525 Hollis Points', 98);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (65, '2017-09-07', 'Et ut haru', 'Eum ea aut atque doloribus. Sunt ad maiores unde nostrum aspernatur ul', 'numquam', '696 Zboncak Parks', 62);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (66, '1973-10-10', 'Sed ullam ', 'Veniam qui aperiam dolore inventore voluptatum nam. Fuga ipsa asperior', 'cum', '295 Kozey Village', 29);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (67, '1997-10-06', 'Ab volupta', 'Sint expedita vel voluptatem aliquam expedita quia esse. Omnis sit ut ', 'unde', '27625 Block Alley', 3);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (68, '2013-05-16', 'Iste ut te', 'Similique nesciunt occaecati explicabo ducimus maiores aut delectus. R', 'et', '174 Rocky Expressway', 54);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (70, '2001-01-16', 'Repudianda', 'Sint quia exercitationem ut dolor minima alias nam. Et animi est ut ea', 'perspiciat', '130 Jordi Prairie Suite 044', 59);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (71, '1977-03-31', 'Voluptate ', 'Vero et placeat doloribus esse. Non fugiat porro est architecto.', 'aut', '56302 Lonzo Unions', 18);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (72, '1992-07-15', 'Nihil omni', 'Ducimus exercitationem ipsa est enim ab vitae. Aut dolores officia ea.', 'minima', '6264 Samson Harbors Apt. 004', 60);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (73, '1988-09-10', 'Minima del', 'Et ut error esse iste harum est voluptatem. Doloribus voluptatem omnis', 'placeat', '3819 Weissnat Ports', 96);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (74, '1988-12-09', 'Ut occaeca', 'Animi laudantium quod rem quaerat. Veniam fugit ut culpa ut earum. Sim', 'qui', '5525 Gabrielle Lane', 32);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (75, '1974-11-29', 'Excepturi ', 'Qui veritatis repellat impedit enim autem consectetur consequatur labo', 'ad', '1145 Marquardt Drives Apt. 068', 58);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (76, '2006-10-07', 'Veniam tot', 'Reiciendis nisi aut non harum. Voluptas libero voluptatem numquam ut e', 'aliquam', '080 Schmeler Valleys', 31);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (77, '2019-02-27', 'Libero sus', 'Voluptate voluptatibus assumenda assumenda magnam temporibus repellat ', 'quod', '1834 Kirsten Meadow Suite 024', 2);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (78, '2008-01-19', 'Excepturi ', 'Est illo incidunt consequatur explicabo. Accusamus ut ad placeat fuga ', 'amet', '03487 Cornell Radial Apt. 210', 34);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (79, '1975-12-19', 'Quam persp', 'Eveniet quos magnam incidunt hic quod molestiae sed maxime. Atque dolo', 'aut', '916 Reginald Parkways', 13);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (80, '1979-08-11', 'Ipsam dict', 'Nobis hic itaque placeat consequatur. Nulla rem sunt vitae repudiandae', 'eum', '404 Jana Forges', 7);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (81, '1987-11-30', 'Et vero at', 'Ut non aut velit quas dolores qui enim. Qui repellendus aspernatur ut ', 'ab', '086 Schneider Mountain', 55);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (82, '1997-10-24', 'Fugit et m', 'Ut ut veniam accusamus consequatur ipsa beatae. Et sed aut quasi eum. ', 'in', '56781 Russell Pass Apt. 135', 4);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (83, '2017-04-16', 'Dolore ips', 'Veritatis autem incidunt et dignissimos iure officiis quae ut. Fugit u', 'minima', '172 Pacocha Port', 87);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (84, '1984-06-23', 'Velit corr', 'Non consectetur accusamus eligendi aut. Est autem est nesciunt dolorem', 'fuga', '205 Smitham Street', 14);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (85, '1989-09-02', 'Corporis i', 'Quia nostrum impedit quos. Magni dolor deserunt molestiae aliquam sed ', 'sed', '59938 Meda Fall', 61);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (86, '1999-02-12', 'Nisi vel r', 'Sint sed at et dolores. Doloremque commodi quas molestias inventore et', 'totam', '393 Harber Corner Apt. 343', 36);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (87, '1989-01-30', 'Officia hi', 'Molestias tempora nostrum culpa libero ea reiciendis vitae autem. Quis', 'in', '114 Emmie Terrace Apt. 226', 65);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (88, '1991-10-04', 'Veniam pra', 'Incidunt a id molestiae neque. Officiis quaerat animi consequatur maio', 'vel', '084 Flossie Valleys Apt. 044', 24);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (89, '1977-12-30', 'Consectetu', 'Eaque voluptates quo rerum et quo. Tenetur veritatis voluptate qui opt', 'reiciendis', '83359 Stehr Rapid', 50);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (90, '2003-05-22', 'Molestiae ', 'Quae quisquam perspiciatis eum sint explicabo quo culpa. Nam cumque ut', 'id', '93457 Murphy Pike Apt. 794', 82);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (91, '1990-10-23', 'Quaerat mo', 'Quasi sint cum reiciendis minus et. Facilis inventore aut velit. Nemo ', 'qui', '25258 Curt Drive Suite 374', 94);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (92, '1982-12-02', 'Expedita n', 'Similique necessitatibus quod libero debitis ea. Deserunt itaque amet ', 'est', '97074 Spinka Skyway Apt. 067', 53);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (93, '1978-01-11', 'Perspiciat', 'Quia velit illum velit voluptatem facilis perspiciatis eligendi. Eos f', 'omnis', '265 Abel Stravenue Suite 597', 48);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (94, '1990-07-12', 'Voluptatem', 'Laboriosam soluta quod ipsum. Aut non alias nam mollitia ex aut archit', 'illo', '696 Bradtke Bypass Suite 024', 52);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (95, '2014-03-22', 'A sed offi', 'Dignissimos qui error impedit et et esse praesentium. Doloremque moles', 'laudantium', '820 Iva Rapid', 42);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (96, '2004-11-21', 'Quia nam t', 'Sit alias quam dolorem voluptatem et commodi blanditiis. Nisi doloremq', 'cumque', '8204 Josiane Mountain Suite 531', 40);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (97, '1982-11-16', 'Vitae ut t', 'Deleniti aut suscipit nihil voluptas iste voluptates laborum molestias', 'ipsam', '51497 Florida Pike', 81);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (98, '1986-12-13', 'Vitae blan', 'Consequatur amet earum alias nulla qui quis consectetur est. Consequun', 'debitis', '4319 Adrienne Meadow', 37);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (99, '1983-02-16', 'Sint amet ', 'Minima id beatae laboriosam quia amet facere ut. Omnis velit voluptate', 'possimus', '836 Darby Fords', 66);
INSERT INTO `Submited_Order` (`Order_ID`, `Order_Date`, `Order_Status`, `Order_Items`, `Order_Time`, `Order_Address`, `Client_ID`) VALUES (100, '1979-06-27', 'Dolorem at', 'Tempore quisquam explicabo necessitatibus quaerat voluptatem et est te', 'omnis', '5259 Alison Glens', 6);


