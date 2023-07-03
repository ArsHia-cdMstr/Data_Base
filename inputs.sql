/***************************    professor  **********************************/
INSERT INTO main.professor(professor_id, professor_name, is_head)
    VALUES (1,'واحدیان', 1);

INSERT INTO main.professor(professor_id, professor_name, is_head)
    VALUES (2, 'کاهانی' , 0);

INSERT INTO main.professor(professor_id, professor_name, is_head)
    VALUES (3, 'نوری' , 0);

INSERT INTO main.professor(professor_id, professor_name, is_head)
    VALUES (4, 'قنبری' , 0);

INSERT INTO main.professor(professor_id, professor_name, is_head)
    VALUES (5, 'اله بخش' , 0);

INSERT INTO main.professor(professor_id, professor_name, is_head)
    VALUES (6, 'یغمایی' , 0);
/***************************    department  **********************************/
INSERT INTO main.department(department_id, department_name)
    VALUES (1 , 'مهندسی');
/***************************     group  **********************************/
INSERT INTO main.`group`(group_id, group_name, department_department_id, head_id)
    VALUES (1,'کامپیوتر', 1, 1);

INSERT INTO main.`group`(group_id, group_name, department_department_id, head_id)
    VALUES (2,'برق', 1, 4);
/***************************     restaurant  **********************************/
INSERT INTO main.restaurant (restaurant_id, restaurant_name)
VALUES (1, 'زیتون');

INSERT INTO main.restaurant (restaurant_id, restaurant_name)
VALUES (2, 'فجر');
/***************************     food  **********************************/
INSERT INTO main.food (food_id, food_name, cost)
VALUES (1, 'مرغ' , 6.00);

INSERT INTO main.food (food_id, food_name, cost)
VALUES (2, 'ماهی', 6.00);

INSERT INTO main.food (food_id, food_name, cost)
VALUES (3, 'قیمه', 4.00);
/***************************     foodtime  **********************************/
INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-03', 'صبح');

INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-03', 'ظهر');

INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-03', 'شب');

INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-02', 'صبح');

INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-02', 'ظهر');

INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-02', 'شب');

INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-01', 'صبح');

INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-01', 'ظهر');

INSERT INTO main.foodtime (food_date, food_shift)
VALUES ('1402-01-01', 'شب');
/***************************   food_has_foodtime    **********************************/
INSERT INTO main.food_has_foodtime (food_food_id, foodtime_food_date, foodtime_food_shift)
VALUES (1,'1402-01-01','ظهر');

INSERT INTO main.food_has_foodtime (food_food_id, foodtime_food_date, foodtime_food_shift)
VALUES (2,'1402-01-02','ظهر');

INSERT INTO main.food_has_foodtime (food_food_id, foodtime_food_date, foodtime_food_shift)
VALUES (3,'1402-01-03','ظهر');

INSERT INTO main.food_has_foodtime (food_food_id, foodtime_food_date, foodtime_food_shift)
VALUES (3,'1402-01-01','شب');

INSERT INTO main.food_has_foodtime (food_food_id, foodtime_food_date, foodtime_food_shift)
VALUES (2,'1402-01-02','شب');

INSERT INTO main.food_has_foodtime (food_food_id, foodtime_food_date, foodtime_food_shift)
VALUES (1,'1402-01-03','شب');
/***************************   resturant_has_food    **********************************/
INSERT INTO main.restaurant_has_food (restaurant_restaurant_id, food_food_id)
VALUES (1, 1);

INSERT INTO main.restaurant_has_food (restaurant_restaurant_id, food_food_id)
VALUES (1, 2);

INSERT INTO main.restaurant_has_food (restaurant_restaurant_id, food_food_id)
VALUES (1, 3);

INSERT INTO main.restaurant_has_food (restaurant_restaurant_id, food_food_id)
VALUES (2, 1);

INSERT INTO main.restaurant_has_food (restaurant_restaurant_id, food_food_id)
VALUES (2, 2);

INSERT INTO main.restaurant_has_food (restaurant_restaurant_id, food_food_id)
VALUES (2, 3);
/***************************   classroom    **********************************/
INSERT INTO main.classroom (classroom_id, department_department_id)
VALUES (11, 1);

INSERT INTO main.classroom (classroom_id, department_department_id)
VALUES (12, 1);

INSERT INTO main.classroom (classroom_id, department_department_id)
VALUES (13, 1);

INSERT INTO main.classroom (classroom_id, department_department_id)
VALUES (21, 1);

INSERT INTO main.classroom (classroom_id, department_department_id)
VALUES (31, 1);
/***************************   class_time    **********************************/
INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('شنبه', '8:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('شنبه', '10:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('شنبه', '12:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('شنبه', '14:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('شنبه', '16:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('شنبه', '18:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('یکشنبه', '8:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('یکشنبه', '10:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('یکشنبه', '12:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('یکشنبه', '14:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('یکشنبه', '16:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('یکشنبه', '18:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('دوشنبه', '8:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('دوشنبه', '10:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('دوشنبه', '12:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('دوشنبه', '14:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('دوشنبه', '16:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('دوشنبه', '18:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('سه شنبه', '8:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('سه شنبه', '10:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('سه شنبه', '12:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('سه شنبه', '14:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('سه شنبه', '16:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('سه شنبه', '18:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('چهارشنبه', '8:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('چهارشنبه', '10:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('چهارشنبه', '12:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('چهارشنبه', '14:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('چهارشنبه', '16:00:00');

INSERT INTO main.class_time (class_time_day, class_time_hour)
VALUES ('چهارشنبه', '18:00:00');
/***************************   course    **********************************/
INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (1,'1402-01-01', 'پاییز', 'سیستم عامل', '1402-10-23 08:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (2,'1402-01-01', 'پاییز', 'شبکه', '1402-10-26 10:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (3,'1402-01-01', 'پاییز', 'برق کشی', '1402-10-23 08:00:00', 2, 2);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (4,'1402-01-01', 'پاییز', 'آزمایشگاه شبکه', '1402-10-28 12:00:00', 1, 1);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (5,'1402-01-01', 'پاییز', 'معماری', '1402-10-28 14:00:00', 1 , 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (1,'1401-01-01', 'پاییز', 'سیستم عامل', '1401-10-23 08:00:00', 1 , 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (2,'1401-01-01', 'پاییز', 'شبکه', '1401-10-26 10:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (4,'1401-01-01', 'پاییز', 'آزمایشگاه شبکه', '1401-10-28 12:00:00', 1, 1);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (5,'1401-01-01', 'پاییز', 'معماری', '1401-10-28 14:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (1,'1402-01-01', 'زمستان', 'سیستم عامل', '1402-03-23 08:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (2,'1402-01-01', 'زمستان', 'شبکه', '1402-03-26 10:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (3,'1402-01-01', 'زمستان', 'برق کشی', '1402-03-23 08:00:00', 2, 2);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (4,'1402-01-01', 'زمستان', 'آزمایشگاه شبکه', '1402-03-28 12:00:00', 1, 1);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (5,'1402-01-01', 'زمستان', 'معماری', '1402-03-28 14:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (1,'1401-01-01', 'زمستان', 'سیستم عامل', '1401-03-23 08:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (2,'1401-01-01', 'زمستان', 'شبکه', '1401-03-26 10:00:00', 1, 3);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (4,'1401-01-01', 'زمستان', 'آزمایشگاه شبکه', '1401-03-28 12:00:00', 1, 2);

INSERT INTO main.course (course_id, year_number, semester, course_name, final_time, group_group_id, unit)
VALUES (5,'1401-01-01', 'زمستان', 'معماری', '1401-03-28 14:00:00', 1, 3);
/***************************   student    **********************************/
INSERT INTO main.student (student_id, student_name, student_phone_number, group_group_id)
VALUES (1, 'ali', '09151111111', 1);

INSERT INTO main.student (student_id, student_name, student_phone_number, group_group_id)
VALUES (2, 'bagher', '09151111112', 1);

INSERT INTO main.student (student_id, student_name, student_phone_number, group_group_id)
VALUES (3, 'sina', '09151111113', 1);

INSERT INTO main.student (student_id, student_name, student_phone_number, group_group_id)
VALUES (4, 'dara', '09151111114', 2);

INSERT INTO main.student (student_id, student_name, student_phone_number, group_group_id)
VALUES (5, 'erfan', '09151111115', 1);

INSERT INTO main.student (student_id, student_name, student_phone_number, group_group_id)
VALUES (6, 'fatemeh', '09151111116', 1);

INSERT INTO main.student (student_id, student_name, student_phone_number, group_group_id)
VALUES (7, 'ghorban', '09151111117', 1);

INSERT INTO main.student (student_id, student_name, student_phone_number, group_group_id)
VALUES (8, 'hesam', '09151111118', 1);
/***************************   previous    **********************************/
INSERT INTO main.previous (course_id, previoud_id)
VALUES (1, 5);

INSERT INTO main.previous (course_id, previoud_id)
VALUES (2, 5);
/***************************   during    **********************************/
INSERT INTO main.during (course_id, during_id)
VALUES (2, 4);
/***************************   class    **********************************/
INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (1,'1402-01-01', 'پاییز', 1, 5);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (2,'1402-01-01', 'پاییز', 1, 6);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (3,'1402-01-01', 'پاییز', 1, 4);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (4,'1402-01-01', 'پاییز', 1, 6);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (5,'1402-01-01', 'پاییز', 1, 3);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (1,'1401-01-01', 'پاییز', 1, 5);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (2,'1401-01-01', 'پاییز', 1, 6);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (4,'1401-01-01', 'پاییز', 1, 6);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (5,'1401-01-01', 'پاییز', 1, 3);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (1,'1402-01-01', 'زمستان', 1, 5);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (2,'1402-01-01', 'زمستان', 1, 6);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (3,'1402-01-01', 'زمستان', 1, 4);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (4,'1402-01-01', 'زمستان', 1, 6);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (5,'1402-01-01', 'زمستان', 1, 3);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (1,'1401-01-01', 'زمستان', 1, 5);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (2,'1401-01-01', 'زمستان', 1, 6);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (4,'1401-01-01', 'زمستان', 1, 6);

INSERT INTO main.class (course_course_id, course_year_number, course_semester, class_group, professor_professor_id)
VALUES (5,'1401-01-01', 'زمستان', 1, 3);
/***************************   class_has_student    **********************************/
INSERT INTO main.class_has_student (class_course_course_id, class_course_year_number, class_course_semester,
                                         class_class_group, student_student_id, active, passed, absence, student_grade,
                                         prof_grade, signed)
VALUES (1,'1402-01-01', 'پاییز', 1, 1, 0, 1, 2, 16.00, 17.12, 1);

INSERT INTO main.class_has_student (class_course_course_id, class_course_year_number, class_course_semester,
                                         class_class_group, student_student_id, active, passed, absence, student_grade,
                                         prof_grade, signed)
VALUES (1,'1402-01-01', 'پاییز', 1, 3, 0, 0, 2, 9.13, 12.00, 1);

INSERT INTO main.class_has_student(class_course_course_id, class_course_year_number, class_course_semester,
                                        class_class_group, student_student_id, active, passed, absence,
                                        student_grade, prof_grade, signed)
VALUES (2,'1402-01-01', 'پاییز', 1, 2, 0, 1, 1, 15.53, 12.16, 1);

INSERT INTO main.class_has_student(class_course_course_id, class_course_year_number, class_course_semester,
                                        class_class_group, student_student_id, active, passed, absence,
                                        student_grade, prof_grade, signed)
VALUES (2,'1402-01-01', 'پاییز', 1, 5, 1, 1, 1, NULL, NULL, 0);
/***************************   class_has_classtime    **********************************/
INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (1,'1402-01-01', 'پاییز', 1, 'شنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (2,'1402-01-01', 'پاییز', 1, 'دوشنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (3,'1402-01-01', 'پاییز', 1, 'سه شنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (4,'1402-01-01', 'پاییز', 1, 'چهارشنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (5,'1402-01-01', 'پاییز', 1, 'شنبه', '10:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (1,'1401-01-01', 'پاییز', 1, 'شنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (2,'1401-01-01', 'پاییز', 1, 'دوشنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (4,'1401-01-01', 'پاییز', 1,  'چهارشنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (5,'1401-01-01', 'پاییز', 1, 'شنبه', '10:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (1,'1402-01-01', 'زمستان', 1, 'شنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (2,'1402-01-01', 'زمستان', 1, 'دوشنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (3,'1402-01-01', 'زمستان', 1,  'سه شنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (4,'1402-01-01', 'زمستان', 1, 'چهارشنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (5,'1402-01-01', 'زمستان', 1,  'شنبه', '10:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (1,'1401-01-01', 'زمستان', 1, 'شنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (2,'1401-01-01', 'زمستان', 1, 'دوشنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (4,'1401-01-01', 'زمستان', 1, 'چهارشنبه', '8:00:00');

INSERT INTO main.class_has_class_time (class_course_course_id, class_course_year_number, class_course_semester,
                                            class_class_group, class_time_class_time_day, class_time_class_time_hour)
VALUES (5,'1401-01-01', 'زمستان', 1,  'شنبه', '10:00:00');
/***************************   food_reservation    **********************************/
INSERT INTO main.food_reservation (food_has_foodtime_food_food_id, food_has_foodtime_foodtime_food_date,
                                        food_has_foodtime_foodtime_food_shift, student_student_id)
VALUES (1,'1402-01-01','ظهر', 1);

INSERT INTO main.food_reservation (food_has_foodtime_food_food_id, food_has_foodtime_foodtime_food_date,
                                        food_has_foodtime_foodtime_food_shift, student_student_id)
VALUES (1,'1402-01-01','ظهر', 3);

INSERT INTO main.food_reservation (food_has_foodtime_food_food_id, food_has_foodtime_foodtime_food_date,
                                        food_has_foodtime_foodtime_food_shift, student_student_id)
VALUES (2,'1402-01-02','ظهر', 2);

INSERT INTO main.food_reservation (food_has_foodtime_food_food_id, food_has_foodtime_foodtime_food_date,
                                        food_has_foodtime_foodtime_food_shift, student_student_id)
VALUES (2,'1402-01-02','ظهر', 4);

INSERT INTO main.food_reservation (food_has_foodtime_food_food_id, food_has_foodtime_foodtime_food_date,
                                        food_has_foodtime_foodtime_food_shift, student_student_id)
VALUES (3,'1402-01-03','ظهر' , 3);


INSERT INTO main.food_reservation (food_has_foodtime_food_food_id, food_has_foodtime_foodtime_food_date,
                                        food_has_foodtime_foodtime_food_shift, student_student_id)
VALUES (3,'1402-01-01','شب', 4);

INSERT INTO main.food_reservation (food_has_foodtime_food_food_id, food_has_foodtime_foodtime_food_date,
                                        food_has_foodtime_foodtime_food_shift, student_student_id)
VALUES (3,'1402-01-01','شب', 1);


INSERT INTO main.food_reservation (food_has_foodtime_food_food_id, food_has_foodtime_foodtime_food_date,
                                        food_has_foodtime_foodtime_food_shift, student_student_id)
VALUES (2,'1402-01-02','شب' , 8);
