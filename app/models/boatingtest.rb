class BoatingTest

    attr_accessor :student, :status, :instructor, :test_name

    @@all = []

    def initialize(test_name, student, status, instructor)
        @test_name = test_name
        @student = student
        @status = status
        @instructor = instructor

        @@all << self
    end

    def self.all
        @@all
    end




    
end
