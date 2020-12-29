SET FOREIGN_KEY_CHECKS=0;
START TRANSACTION;


CREATE TABLE `department` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `department` (`id`, `name`) VALUES
(1, 'Sales'),
(2, 'HR'),
(3, 'IT'),
(4, 'Service'),
(5, 'Support');

CREATE TABLE `employee` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int NOT NULL,
  `department` int NOT NULL,
  `boss_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `employee` (`id`, `name`, `salary`, `department`, `boss_id`) VALUES
(1, 'Victor S. Valentine', 59398007, 3, 35),
(2, 'Willie R. Bowers', 19260173, 5, 63),
(3, 'Bradly M. Sharp', 49159839, 3, 9),
(4, 'Bridgett C. Hill', 20047407, 5, 63),
(5, 'Wendy D. Rodrigue', 19040191, 5, 63),
(6, 'Kristine J. Rose', 22961235, 3, 35),
(7, 'Alexander A. Dahl', 9847637, 2, 164),
(8, 'David L. Martell', 55315125, 1, 117),
(9, 'Nettie A. Mealy', 46807016, 3, NULL),
(10, 'Chiquita D. Alexander', 52814998, 4, 27),
(11, 'Juan H. English', 16492814, 3, 35),
(12, 'Paul L. Benjamin', 20256397, 3, 35),
(13, 'Robert B. Jordan', 8727859, 3, 35),
(14, 'Carroll D. Garza', 28704438, 1, 102),
(15, 'Zachery L. Broome', 24112194, 5, 63),
(16, 'Irma G. Tyree', 22954100, 3, 35),
(17, 'Andrew S. Altizer', 37367150, 3, 35),
(18, 'Laura S. Young', 27892522, 1, 102),
(19, 'Tony C. Combs', 57609833, 2, 7),
(20, 'Johnny M. Turner', 44836388, 3, 35),
(21, 'Amelia C. Mauldin', 5713649, 1, 102),
(22, 'Carol M. Vaughn', 24551730, 5, 63),
(23, 'William M. Ross', 11525507, 1, 102),
(24, 'Wayne C. Williams', 11230161, 1, 102),
(25, 'Jorge S. Olvera', 21672051, 1, 102),
(26, 'Cindy J. Thompson', 54058419, 3, 35),
(27, 'Denise C. Byrd', 11293061, 4, 88),
(28, 'Rosa M. Humphries', 34157409, 1, 102),
(29, 'Jonathan A. Hayes', 28138634, 3, 124),
(30, 'Filiberto M. Thao', 37930079, 3, 124),
(31, 'Barbara J. Camp', 22287515, 4, 27),
(32, 'Elizabeth J. Boyd', 33358960, 1, 102),
(33, 'Carol R. Balderas', 32994811, 3, 9),
(34, 'Terry N. Garner', 12767267, 2, 7),
(35, 'Ladonna D. Baskin', 5041697, 3, 9),
(36, 'Margret F. Gomez', 20530048, 1, 102),
(37, 'Leon V. Bennett', 56146030, 5, 63),
(38, 'Jeffery A. Scott', 23454800, 4, 27),
(39, 'Ronald A. Ballard', 37803276, 3, 124),
(40, 'Camille J. Colella', 51704798, 2, 7),
(41, 'Mark M. Small', 18307721, 3, 124),
(42, 'John H. Koontz', 38287864, 4, 27),
(43, 'Cecelia J. Tackett', 59329826, 2, 164),
(44, 'James J. Malkin', 15162485, 4, 27),
(45, 'Bennie F. White', 59192608, 4, 27),
(46, 'Gala J. Harrison', 7605743, 2, 7),
(47, 'Lenard S. Yee', 23212746, 5, 63),
(48, 'Gladys J. Gould', 5202678, 2, 7),
(49, 'Christopher P. Guarino', 55384130, 5, 63),
(50, 'Patricia A. Riley', 4110381, 3, 124),
(51, 'Jonathon A. Choi', 54621791, 4, 27),
(52, 'Renna D. Jones', 10387831, 3, 9),
(53, 'Jared C. Shaw', 34351310, 4, 27),
(54, 'Frank J. Bennett', 21674263, 5, 63),
(55, 'John L. Cruz', 39882588, 2, 7),
(56, 'Elizabeth R. Thornburg', 46235098, 4, 27),
(57, 'Kirsten A. Herrera', 50323893, 4, 159),
(58, 'Barbara C. Poteat', 47797293, 1, 166),
(59, 'Eric K. Dixon', 41594646, 1, 166),
(60, 'Harold R. Botelho', 29379560, 5, 136),
(61, 'Jennifer L. Lorenzo', 16588948, 3, 124),
(62, 'Carol W. Cook', 42024072, 2, 7),
(63, 'Olga H. Austin', 16745564, 5, 86),
(64, 'Shirley L. Fogg', 23595769, 5, 136),
(65, 'Amos L. Jessee', 48045483, 4, 159),
(66, 'David E. Morales', 3745644, 5, 136),
(67, 'John K. Texeira', 54262484, 4, 159),
(68, 'Verna P. Jordan', 36330477, 3, 124),
(69, 'Agnes J. Hoover', 59966049, 3, 124),
(70, 'Derek N. Nelson', 31432889, 3, 124),
(71, 'Elise J. Ybarra', 14863465, 2, 7),
(72, 'Michael M. Richards', 45421574, 3, 52),
(73, 'Duane S. McLaughlin', 22960464, 1, 166),
(74, 'Hattie M. Long', 6608639, 4, 159),
(75, 'Chester P. Smith', 47690664, 4, 159),
(76, 'Christine S. Silverstein', 58363704, 2, 7),
(77, 'Jesus L. Galloway', 25406866, 5, 136),
(78, 'Manuel A. Wootton', 8659614, 3, 52),
(79, 'Linda J. Carwile', 2078919, 2, 43),
(80, 'Debra L. Saul', 34633758, 4, 159),
(81, 'Luis N. Barkman', 53343378, 5, 136),
(82, 'Tina A. Easley', 21865816, 4, 159),
(83, 'John A. Needham', 10673731, 3, 52),
(84, 'Mozelle R. Villarreal', 17666254, 3, 52),
(85, 'Barbara R. Green', 31001144, 4, 159),
(86, 'Donald A. Nichols', 6358193, 5, NULL),
(87, 'Rhonda J. Parks', 47645597, 3, 52),
(88, 'Marcus G. Davidson', 36603741, 4, NULL),
(89, 'Fred G. Ripley', 8033635, 1, 166),
(90, 'Mary M. Beasley', 49068924, 2, 43),
(91, 'Elizabeth A. Lussier', 55704137, 5, 136),
(92, 'Howard C. Nall', 21915556, 5, 136),
(93, 'Richard B. Townsend', 20411035, 3, 52),
(94, 'Beverly W. Messina', 14584271, 2, 43),
(95, 'Rachel D. Lacy', 26734562, 4, 159),
(96, 'Elbert G. Gregory', 54283335, 4, 183),
(97, 'Eric K. Gunnels', 48091640, 3, 52),
(98, 'Martha L. Clark', 53303779, 3, 52),
(99, 'Eric P. Harrison', 59109247, 5, 136),
(100, 'Burton E. Martin', 43949644, 4, 183),
(101, 'Nancy R. Gordon', 22307421, 4, 183),
(102, 'Everett J. Rivera', 10488256, 1, 117),
(103, 'William V. Hill', 56891075, 3, 52),
(104, 'Evelyn C. Alexander', 28940852, 4, 88),
(105, 'Thomas S. Sparks', 20668823, 2, 43),
(106, 'Hector I. Dandridge', 54734374, 1, 166),
(107, 'Maria P. Kovacs', 59711506, 2, 43),
(108, 'Shirley B. Imel', 15593017, 4, 183),
(109, 'William L. Lam', 46153548, 5, 136),
(110, 'Jack C. Silver', 42787972, 3, 33),
(111, 'Grace C. Eddy', 14689531, 1, 166),
(112, 'Jason D. Smith', 44713510, 1, 166),
(113, 'Beverly K. Riddick', 24066213, 2, 43),
(114, 'Lisa N. Doucet', 24023273, 4, 183),
(115, 'Dawn D. Smithson', 5030423, 3, 33),
(116, 'Frederick V. Pham', 22531639, 4, 183),
(117, 'Cecil M. Hall', 29434358, 1, NULL),
(118, 'Jay M. Turner', 42997823, 3, 33),
(119, 'Philip R. Johnson', 50012899, 5, 150),
(120, 'Carmen R. Young', 47062680, 3, 33),
(121, 'Lee M. Giancola', 19502134, 4, 183),
(122, 'Paul J. Wilson', 57816076, 3, 33),
(123, 'Tonya J. Cabrera', 7912568, 1, 166),
(124, 'Tricia W. Gilleland', 35771068, 3, 9),
(125, 'Dennis M. Romo', 8561381, 2, 43),
(126, 'Daniel M. Murphy', 34088085, 4, 183),
(127, 'Arthur R. Hume', 37942382, 3, 33),
(128, 'Eddie R. Fox', 36947678, 1, 166),
(129, 'Tonya A. Ramirez', 27814991, 3, 33),
(130, 'David D. Collins', 6225237, 1, 8),
(131, 'Steven V. Stevens', 49580648, 4, 183),
(132, 'Julie L. Craig', 8873553, 3, 33),
(133, 'Diane R. Washington', 37396035, 4, 104),
(134, 'Susan J. Johnson', 22628056, 3, 33),
(135, 'William M. Page', 46557830, 5, 150),
(136, 'Theresa D. White', 53569501, 5, 86),
(137, 'Nicole J. Crowley', 35823842, 1, 8),
(138, 'Audrey M. Hicks', 9729616, 1, 8),
(139, 'Leo S. Ogden', 59033649, 2, 43),
(140, 'Joann L. Carpenter', 48038159, 2, 43),
(141, 'George S. Montes', 19741045, 5, 150),
(142, 'Shelly W. Cunningham', 50714995, 2, 164),
(143, 'Carmen L. Murphy', 38285892, 2, 164),
(144, 'Christopher M. Coutee', 5198035, 1, 8),
(145, 'Ashton S. Plunk', 54148520, 3, 3),
(146, 'Ricky J. Smith', 37070747, 4, 104),
(147, 'Chad S. Hudson', 5491925, 3, 3),
(148, 'Ray H. Lang', 17942757, 4, 104),
(149, 'Jennifer A. Davis', 36437168, 4, 104),
(150, 'Joseph E. Stanfield', 34157057, 5, 86),
(151, 'Marguerite E. McCracken', 48824537, 3, 3),
(152, 'Max T. Nadeau', 24273231, 4, 104),
(153, 'Elizabeth R. Fultz', 27256692, 1, 8),
(154, 'Michael G. Conkle', 33738645, 5, 150),
(155, 'Larry M. Montoya', 7082112, 1, 8),
(156, 'Cindy J. Rice', 30486433, 5, 150),
(157, 'Mary A. Dyer', 26136693, 4, 104),
(158, 'Mary J. Hovis', 13604734, 5, 150),
(159, 'Rebecca S. Bos', 48067714, 4, 88),
(160, 'Daniel T. Dickson', 39290588, 2, 164),
(161, 'Diane J. Jackson', 39170981, 2, 164),
(162, 'Russ J. Balsamo', 21202636, 5, 150),
(163, 'James S. Garcia', 17329848, 5, 150),
(164, 'Elena B. Medina', 28126067, 2, NULL),
(165, 'Althea D. Brune', 15879761, 1, 8),
(166, 'Janie J. Ginn', 55764987, 1, 117),
(167, 'Timothy D. Ramirez', 38159366, 3, 3),
(168, 'Marion A. McConnell', 11627698, 1, 8),
(169, 'Ursula D. Barnum', 54350354, 4, 104),
(170, 'Kevin A. Peterson', 2850969, 2, 164),
(171, 'Jean W. Thompson', 22989455, 3, 3),
(172, 'Diane L. Torres', 50893955, 1, 8),
(173, 'Timothy E. Ruark', 41746427, 1, 117),
(174, 'Phillip P. Mui', 4938266, 1, 117),
(175, 'Linda O. Gunn', 17609060, 4, 104),
(176, 'Krista D. Williams', 49476508, 4, 104),
(177, 'Summer R. Couture', 45496799, 4, 88),
(178, 'Jessica S. Needham', 17475657, 3, 3),
(179, 'Theo C. Andrews', 3329599, 4, 88),
(180, 'Christine T. Acker', 9035697, 5, 150),
(181, 'Ron M. Iorio', 53343468, 1, 117),
(182, 'Sue A. Carter', 24580212, 2, 164),
(183, 'Bernard V. Diaz', 29508198, 4, 88),
(184, 'Eric J. Reynoso', 58548487, 4, 88),
(185, 'Susan J. Hatten', 29408132, 5, 86),
(186, 'Daniel K. Harrison', 24962421, 1, 117),
(187, 'Robert N. Jarrett', 27750445, 4, 88),
(188, 'Judy H. Toles', 2005111, 3, 3),
(189, 'Kari E. Mendel', 59468357, 5, 86),
(190, 'Mary R. Medina', 36688480, 3, 3),
(191, 'Connie W. Hockensmith', 26379105, 3, 3),
(192, 'Denise C. Larkin', 19206147, 1, 117),
(193, 'Julio D. McDaniel', 36109390, 4, 88),
(194, 'Keisha J. Cuevas', 39676845, 3, 9),
(195, 'Katie L. Benedict', 18506609, 4, 88),
(196, 'James R. Tuck', 34353306, 1, 117),
(197, 'Jonathan F. Kaspar', 23650456, 4, 88),
(198, 'Grace E. Close', 15463556, 2, 164),
(199, 'Cleveland L. Long', 14549413, 5, 86);


ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_employee_department_id` (`department`),
  ADD KEY `FK_employee_employee_id` (`boss_id`);


ALTER TABLE `department`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `employee`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;


ALTER TABLE `employee`
  ADD CONSTRAINT `FK_employee_department_id` FOREIGN KEY (`department`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `FK_employee_employee_id` FOREIGN KEY (`boss_id`) REFERENCES `employee` (`id`);
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;