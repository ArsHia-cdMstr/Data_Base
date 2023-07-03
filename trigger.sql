create trigger average
    after update on main.class_has_student
    for each row
            update main.student
            set main.student.average = (select sum(main.class_has_student.student_grade*main.course.unit)/sum(main.course.unit)
                                        from main.course,main.class_has_student
                                        where main.class_has_student.class_course_course_id=main.course.course_id
                                        and main.class_has_student.class_course_semester=main.course.semester
                                        and main.course.year_number=main.class_has_student.class_course_year_number
                                        and main.class_has_student.signed=1
                                        and NEW.student_student_id = main.class_has_student.student_student_id)
                where (NEW.signed=1 and OLD.signed=0 and NEW.student_student_id = main.student.student_id);


create trigger food_reservation
    after insert on main.food_reservation
    for each row
    update main.student
    set main.student.wallet = main.student.wallet - (select cost from main.food where NEW.food_has_foodtime_food_food_id=main.food.food_id)
where NEW.student_student_id=student_id;


create trigger total_unit
    after update on main.class_has_student
    for each row
    update main.student
    set main.student.total_unit = main.student.total_unit + (select unit from main.course where NEW.class_course_course_id=main.course.course_id and NEW.class_course_year_number=main.course.year_number and NEW.class_course_semester=main.course.semester)
    where NEW.signed=1 and OLD.signed=0;

create trigger unit_selection
    after insert on main.class_has_student
    for each row
    update main.student
    set main.student.term_unit = main.student.term_unit + (select unit from main.course where NEW.class_course_course_id=main.course.course_id and NEW.class_course_year_number=main.course.year_number and NEW.class_course_semester=main.course.semester)
    where NEW.student_student_id = main.student.student_id;

create trigger delete_course
    after delete on main.class_has_student
    for each row
    delete from main.class_has_final_schedule
           where OLD.class_course_course_id = main.class_has_final_schedule.class_course_course_id
             and OLD.student_student_id = main.class_has_final_schedule.final_schedule_student_student_id;

create trigger add_course_schedule
    after insert on main.class_has_student
    for each row
    insert ignore into  main.final_schedule(student_student_id)
    value (NEW.student_student_id);

create trigger add_course_class
    after insert on main.class_has_student
    for each row
    insert into main.class_has_final_schedule(class_course_course_id, class_course_year_number, class_course_semester, class_class_group, final_schedule_student_student_id,final_date)
    value (NEW.class_course_course_id, NEW.class_course_year_number, NEW.class_course_semester, NEW.class_class_group, NEW.student_student_id,(select final_time from main.course where NEW.class_course_course_id=main.course.course_id and NEW.class_course_year_number=main.course.year_number and NEW.class_course_semester=main.course.semester));



create trigger zero_unit
    after update on main.class_has_student
    for each row
    update main.student
    set main.student.term_unit=0
    where (select sum(unit)
           from main.course,main.class_has_student
           where main.course.course_id=main.class_has_student.class_course_course_id and
                 main.course.semester=main.class_has_student.class_course_semester and
                 main.course.year_number=main.class_has_student.class_course_year_number and
                 main.class_has_student.signed=1 and NEW.student_student_id=main.class_has_student.student_student_id
           group by main.class_has_student.student_student_id)=main.student.term_unit;

create trigger seil_food
    after update on main.food
    for each row
    update main.food_has_foodtime
    set main.food_has_foodtime.foodtime_food_shift='شب'
    where NEW.cost>10 and NEW.food_id=main.food_has_foodtime.food_food_id;