class Instructor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def search_test(student, test_name)
        BoatingTest.all.find {| test | test.student == student && test.test_name == test}
    end

    def pass_student(student, test_name)
        exam = search_test(student, test_name)
        if exam
            test.status = "passed"
        else
            BoatingTest.new(test_name, student, status = "passed", self)
        end
    end

    def fail_student(student, test_name)
        exam = search_test(student, test_name)
        if exam
            test.status = "failed"
        else
            BoatingTest.new(test_name, student, status = "failed", self)
        end
    end



end
