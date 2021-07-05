class Instructor

    @@all=[]

    attr_reader :name

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def find_boating_test(student, test_name)
        BoatingTest.find{|test| test.student == student && test.test_name == test_name}
    end

    def pass_student(student, test_name)
        boating_test = find_boating_test(student, test_name)
        if boating_test
            boating_test.test_status == "Pass"
        else
            boating_test = BoatingTest.new(student, test_name, "Pass", self)
        end
        boating_test
    end

    def fail_student(student, test_name)
        boating_test = find_boating_test(student, test_name)
        if boating_test
            boating_test.test_status == "Fail"
        else
            boating_test = BoatingTest.new(student, test_name, "Fail", self)
        end
        boating_test
    end

end
