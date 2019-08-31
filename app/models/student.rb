class Student
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def boatingtests
        BoatingTest.all.select{|test| test.student == self}
    end

    def add_boating_test(instructor, test_name, status)
        BoatingTest.new(self, instructor, test_name, status)
    end

    def num_passed
        boatingtests.count {|test| test.status == "passed"}
    end

    def grade_percentage
         (num_passed.to_f / boatingtests.length * 100).round(2)
    end

    def self.find_student(name)
        @@all.find {|student| student.name == name}
    end

    def self.all
        @@all
    end
end
