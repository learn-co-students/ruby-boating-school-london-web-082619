class BoatingTest
    attr_reader :student, :instructor, :test_name, :status
    @@all = []
    def initialize(student, instructor, test_name, status)
        @student = student
        @instructor = instructor
        @test_name = test_name
        @status = status
        @@all << self
    end

    def self.all
        @@all
    end
end
