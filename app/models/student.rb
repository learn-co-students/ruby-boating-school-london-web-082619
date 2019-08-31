class Student
    attr_reader :first_name

    @@all = []

    ###### Instance methods ######
    #Works!
    def initialize(first_name)
        @first_name = first_name

        @@all << self
    end

    #Works!
    def add_boating_test(instructor, test_name, status)
        BoatingTest.new(self, instructor, test_name, status)
    end

    #Works!
    def tests()
        BoatingTest.all.select { | test | test.student == self }
    end

    #Works!
    def grade_percentage
        passed_tests = tests.select { | test | test.status == "passed" }
        percent_pass = (passed_tests.length.to_f / tests().length) * 100
        percent_pass.round(2)
    end

    ###### Class methods ######

    #Works!
    def self.find_student(first_name)
        @@all.find { | student | student.first_name == first_name }
    end

end
