class Instructor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def find_test(student, test_name)
        BoatingTest.all.find do |test|
            test.test_name == test_name && test.student == student
        end
    end

    def pass_student(student, test_name)
        test = find_test(student, test_name)
        if test
            test.status = "passed"
        else
            BoatingTest.new(student, self, test_name, "passed")
        end
    end

    def fail_student(student, test_name)
        test = find_test(student, test_name)
        if test
            test.status = "failed"
        else
            BoatingTest.new(student, self, test_name, "failed")
        end
    end

    def self.all
        @@all
    end
end
