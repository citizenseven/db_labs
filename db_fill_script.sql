INSERT INTO `admin` 
(`id`, `name`, 'age', 'gender', 'role' , 'language') VALUES 
(15647897, 'Feruz', 20, 'M', 'admin', 'eng'),
(89454879, 'Zhamin', 20, 'M', 'admin', 'kor');

INSERT INTO `educator` 
(`id`, `name`, `age`, `gender`, `email`, `specialization`, 
'education_background', 'language') VALUES 
(58784569, 'Oscar Chase', 38, 'M', 'oscar1020@gmail.com', 'network engineer', 'PhD', 'eng'),
(62371259, 'Sung-Soo Lee', 28, 'M', 'leesungsoo@gmail.com', 'project manager', 'Bachelor`s', 'kor');

INSERT INTO `user` 
(`id`, `name`, `email`, `age`, `gender`, `language`, 
'education_background', 'role', 'password') VALUES 
(67890494, 'Askar Chase', 'askar2312@gmail.com', 22, 'M', 'eng', 'Bachelor`s', 'student', '21232f297a57a5a743894a0e4a801fc3'),
(79484013, 'Adam Black', 'adamqwer@gmail.com', 20, 'M', 'eng', 'Bachelor`s', 'student', '5f4dcc3b5aa765d61d8327deb882cf99');

INSERT INTO `category` 
(`id`, `name`) VALUES 
(564597, 'IT'),
(149947, 'Business');

INSERT INTO `course_material` 
(`id`, `name`, 'document_type') VALUES 
(97049870, 'Introduction.pdf', 'pdf'),
(35454145, 'Intro.mp4', 'video');

INSERT INTO `course` 
(`id`, `name`, `total_hours`, `course_language`, `price`, `educator_id`, 
'admin_id', 'category_id', 'course_material_id') VALUES 
(40212398, 'Networking Basics', 50, 'eng', 19, 58784569, 15647897, 564597, 97049870),
(12526312, 'Agile', 36, 'kor', 14, 62371259, 89454879, 149947, 35454145);

INSERT INTO `enrollement` 
(`id`, `status`, `user_id`, `course_id`) VALUES 
(56234454, 'awaiting payment', 67890494, 40212398),
(56516927, 'awaiting approvement', 79484013, 12526312);

INSERT INTO `exam` 
(`id`, `status`, `course_id`, `educator_id`, `user_id`) VALUES 
(912398, 'grading', 40212398, 58784569, 67890494),
(526912, 'grading', 12526312, 62371259, 79484013);

INSERT INTO `question` 
(`id`, `question`, `user_id`, `educator_id`, `course_id`) VALUES 
(89778901, 'How to install a Packet Tracer?', 67890494, 58784569, 40212398);

INSERT INTO `feedback` 
(`id`, `course_rating`, `user_id`, `educator_id`, `course_id`) VALUES 
(64556242, 5, 40212398, 58784569, 67890494),
(86578623, 5, 12526312, 62371259, 79484013);

INSERT INTO `certification` 
(`id`, `certification_date`, `user_id`, `educator_id`, `course_id`) VALUES 
(12534124, '2022-02-23', 40212398, 58784569, 67890494),
(34596796, '2021-10-25', 12526312, 62371259, 79484013);

INSERT INTO `payment` 
(`id`, `price`, `user_id`, `admin_id`, `course_id`) VALUES 
(56345443, 19, 10, 15647897, 67890494),
(13121326, 14, 10, 89454879, 79484013);