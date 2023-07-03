create view passed as
select main.course.course_name
from main.course,main.class,main.class_has_student
where main.class_has_student.class_course_course_id=main.class.course_course_id
                           and main.class_has_student.class_course_semester=main.class.course_semester
                           and main.class_has_student.class_class_group=main.class.class_group
                           and main.class_has_student.class_course_year_number=main.class.course_year_number
                           and main.course.semester=main.class.course_semester
                           and main.course.course_id=main.class.course_course_id
                           and main.course.year_number=main.class.course_year_number
                           and main.class_has_student.student_student_id=1
                           and main.class_has_student.passed=1 ;

create view alef as
    select student_name
        from main.student
        where average >= 17
        order by main.student.entry_year;

create  view 0_wallet as
    select student_name
from main.student
where main.student.wallet=0;

create  view cheapest_foods as
select food_name
from main.food
where main.food.cost<= all(select cost from main.food);

create view night_menu as
select food_name
from main.food,main.food_has_foodtime
where main.food.food_id=main.food_has_foodtime.food_food_id and main.food_has_foodtime.foodtime_food_shift='شب';




create view food_reserve as
    select main.food.food_name,count(main.food_reservation.student_student_id)
        from main.food_reservation,main.food
        where main.food.food_id=main.food_reservation.food_has_foodtime_food_food_id
        and main.food_reservation.food_has_foodtime_foodtime_food_date=1402-01-01
        group by food_name;


create view sorted_by_average as
select course_name
from main.course,main.class_has_student,main.student
where main.course.course_id=main.class_has_student.class_course_course_id
and main.course.year_number=main.class_has_student.class_course_year_number and main.class_has_student.class_course_semester='پاییز' and main.class_has_student.class_course_year_number=1402
and main.course.semester=main.class_has_student.class_course_semester and main.student.student_id=main.class_has_student.student_student_id
order by (select AVG(a.student_grade) from class_has_student as a, class_has_student as b where a.class_course_course_id = b.class_course_course_id);

create view term_schedule as
    select distinct main.`group`.department_department_id, main.course.course_id, main.professor.professor_name, main.class.class_group, main.department.department_name, main.course.course_name
from main.course,main.`group`,main.professor,main.class,main.department
where main.course.course_id = main.class.course_course_id and
      main.class.professor_professor_id = main.professor.professor_id and
      main.course.group_group_id = main.`group`.group_id and
      main.`group`.department_department_id = main.department.department_id;

create view stupid as
    select main.student.student_id, main.student.student_name
from main.student,main.class_has_student,main.course
where main.class_has_student.student_student_id = main.student.student_id
and main.class_has_student.class_course_course_id=main.course.course_id
                                        and main.class_has_student.class_course_semester=main.course.semester
                                        and main.course.year_number=main.class_has_student.class_course_year_number
and (select sum(main.course.unit) from main.course, main.class_has_student
                                  where main.class_has_student.class_course_course_id= main.course.course_id and
                                        main.class_has_student.passed = 1
                                        group by main.class_has_student.student_student_id limit 1)<12;