require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Angus")
student2 = Student.new("Bianca")
student3 = Student.new("Grace")
students = [student1, student2, student3]

instructor1 = Instructor.new("Thor")
instructor2 = Instructor.new("Odin")
instructor3 = Instructor.new("Loki")
instructors = [instructor1, instructor2, instructor3]

tests = ["Speedboat", "Yacht", "Dinghy", "Kayak", "Ferry"]
statuses = ["passed", "failed"]

test1 = BoatingTest.new(students.sample, instructors.sample, tests.sample, statuses.sample)
test2 = BoatingTest.new(students.sample, instructors.sample, tests.sample, statuses.sample)
test3 = BoatingTest.new(students.sample, instructors.sample, tests.sample, statuses.sample)
test4 = BoatingTest.new(students.sample, instructors.sample, tests.sample, statuses.sample)
test5 = BoatingTest.new(students.sample, instructors.sample, tests.sample, statuses.sample)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

