import mysql.connector

mydb = mysql.connector.connect(
  host = "127.0.0.1",
  user = "root",
  password = "momeni.mrmyazdi",
  database = "main"
)

print("1. enter as a professor");
print("2. enter as a student");
x = input()


def professor(mydb, user):
  print("You have entered as a professor.")


def student(mydb, user):
  print("You have entered as a student.")
  while True:
    print('1. show passed or not (view #2)')
    print('2. show ALEF (view #3)')
    print('3: empty wallet.')
    print('4: show the cheapest food.')
    print('5: show the night menu')
    print('6: show list of foods in the week. (veiw #4)')
    print('7: show ')

    x = int(input())
    if x == 1:
      mycursor = mydb.cursor()
      mycursor.execute("select course.course_name from course,class,class_has_student "
                       "where class_has_student.class_course_course_id=class.course_course_id "
                       "and class_has_student.class_course_semester=class.course_semester "
                       "and class_has_student.class_class_group=class.class_group "
                       "and class_has_student.class_course_year_number=class.course_year_number "
                       "and course.semester=class.course_semester and course.course_id=class.course_course_id "
                       "and course.year_number=class.course_year_number and class_has_student.student_student_id= " + str(user) +
                       " and class_has_student.passed=1")
      result = mycursor.fetchall()
      for row in result:
        print(row)
      mycursor.close()

    elif x == 2:
      mycursor = mydb.cursor()
      mycursor.execute('select student_name from student where average >= 17 order by student.entry_year')
      result = mycursor.fetchall()
      for row in result:
        print(row)
      mycursor.close()

    elif x == 3:
      mycursor = mydb.cursor()
      mycursor.execute('select student_name from student where student.wallet=0')
      result = mycursor.fetchall()
      for row in result:
        print(row)
      mycursor.close()

    elif x == 4:
      mycursor = mydb.cursor()
      mycursor.execute('select food_name from food where food.cost<= all(select cost from food)')
      result = mycursor.fetchall()
      for row in result:
        print(row)
      mycursor.close()

    elif x == 5:
      mycursor = mydb.cursor()
      mycursor.execute('select food_name from food,food_has_foodtime '
                       'where food.food_id=food_has_foodtime.food_food_id '
                       'and food_has_foodtime.foodtime_food_shift= "شب" ')
      result = mycursor.fetchall()
      for row in result:
        print(row)
      mycursor.close()

    elif x == 6:
      start_date = input('input the start date: ')
      print(start_date)
      end_date = input('input the end date: ')
      mycursor = mydb.cursor()
      mycursor.execute('select food.food_name,count(food_reservation.student_student_id) '
                       'from food_reservation,food  and '
                       'food_reservation.food_has_foodtime_foodtime_food_date between ' + str(start_date) + ' and '
                        + str(end_date) + ' group by food_name')
      result = mycursor.fetchall()
      for row in result:
        print(row)
      mycursor.close()

    elif x == 7:
      mycursor = mydb.cursor()
      mycursor.execute('')
      result = mycursor.fetchall()
      for row in result:
        print(row)
      mycursor.close()



def prof(mydb):
  username = input("input id:")
  mycursor = mydb.cursor()
  mycursor.execute("SELECT professor_id from student where professor_id = " + username)
  result = mycursor.fetchall()
  for row in result:
    if username == str(row[0]):
      student(mydb, username)
  print('user not found.')
  mycursor.close()


def stdnt(mydb):
  username = input("input id:")
  mycursor = mydb.cursor()
  mycursor.execute("SELECT student_id from student where student_id = " + username)
  result = mycursor.fetchall()
  for row in result:
    if username == str(row[0]):
      student(mydb, username)
  print('user not found.')
  mycursor.close()


if (input == 1):
  prof(mydb)
else:
  stdnt(mydb)






mydb.close()