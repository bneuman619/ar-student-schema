require_relative 'student'
require_relative 'teacher'
require_relative 'student_teacher'
require 'date'

['alf', 'walf', 'teacher', 'creature', 'mike busch',
'elf', 'me', 'you', 'us', 'we'].each do |teacher|
  email = teacher + "@whatever.net"
  teacher = Teacher.create(name: teacher, email: email, phone: "111-111-1111")

end


birthday = Date.new(2005, 3, 3)

student1 = Student.create(first_name: "Super", last_name: "Man",
                          gender: "M", birthday: birthday, 
                          email: "whatever@whatever.net", phone: "111-111-11111")

student2 = Student.create(first_name: "Suerr", last_name: "Maern",
                          gender: "F", birthday: birthday, 
                          email: "wdfhatever@whatever.net", phone: "1131-111-11111")

puts student1
puts student2
StudentTeacher.create(student_id: 1, teacher_id: 1)
StudentTeacher.create(student_id: 2, teacher_id: 9)
students = Student.all
puts students[0].teachers
teachers = Teacher.all
puts teachers[0].students
