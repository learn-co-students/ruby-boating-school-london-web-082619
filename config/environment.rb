require 'bundler/setup'
require 'pry'
Bundler.require
require_all 'app'

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
squirel = Student.new("Squirel") 

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")


no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)

# binding.pry
'save'