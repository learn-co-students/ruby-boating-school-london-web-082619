require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

tests = ["Don't Crash 101", "Power-Steering 202", "Power-Steering 201", "Ocean Floor Parking 101"]
statuses = ["failed", "passed"]

student1 = Student.new("Spongebob")
student2 = Student.new("Patrick")
student3 = Student.new("Squidward")
student4 = Student.new("Sandy")

instructor1 = Instructor.new("Ms.Puff")
instructor2 = Instructor.new("Mr.Krabs")
instructor3 = Instructor.new("Plankton")
instructor4 = Instructor.new("Gary - the snail")


test1 = student1.add_boating_test(instructor1, tests.sample, "passed")
test2 = student2.add_boating_test(instructor3, tests.sample, statuses.sample)
test3 = student1.add_boating_test(instructor2, tests.sample, "failed")
test4 = student4.add_boating_test(instructor4, tests.sample, statuses.sample)
test5 = student1.add_boating_test(instructor4, tests.sample, "failed")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

