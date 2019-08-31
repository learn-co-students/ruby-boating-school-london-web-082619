class Instructor
    attr_reader :name

    @@all = []

    ###### Instance methods ######
    #Works!
    def initialize(name)
        @name = name

        @@all << self
    end

    #Works!
    def fetch_test(student, test_name)
        BoatingTest.all.find do | test |
            test.test_name == test_name && test.student == student
        end
    end

    #Works!
    def pass_student(student, test_name)
        test = fetch_test(student, test_name)
        if test
            test.status = "passed"
            return test
        else
            BoatingTest.new(student, self, test_name, "passed")
        end
    end

    #Works!
    def fail_student(student, test_name)
        test = fetch_test(student, test_name)
        if test
            test.status = "failed"
            return test
        else
            BoatingTest.new(student, self, test_name, "failed")
        end
    end


    ###### Class methods ######
    #Works!
    def self.all()
        @@all
    end

end
