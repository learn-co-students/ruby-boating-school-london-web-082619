require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

student1 = Student.new("Spongebob")
student2 = Student.new("Patrick")
student3 = Student.new("Harry")
student4 = Student.new("Jim")
student5 = Student.new("Taylor")
student6 = Student.new("Missy")
 
instructor1 = Instructor.new("Ms.Puff")
instructor2 = Instructor.new("Mr.Krabs")
instructor3 = Instructor.new("Mr.Snow")
instructor4 = Instructor.new("Mr.Hairy")
 
boatingtest1 = student1.add_boating_test(instructor1, "Don't Crash 101", "pending")
boatingtest2 = student2.add_boating_test(instructor1, "Power Steering 202", "failed")
boatingtest2 = student2.add_boating_test(instructor2, "Power Steering 202", "failed")
boatingtest2 = student2.add_boating_test(instructor3, "Power Steering 203", "failed")
boatingtest3 = student1.add_boating_test(instructor2, "Power Steering 202", "passed")
boatingtest4 = student2.add_boating_test(instructor4, "Power Steering 204", "passed")
boatingtest5 = student3.add_boating_test(instructor2, "Power Steering 201", "passed")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

