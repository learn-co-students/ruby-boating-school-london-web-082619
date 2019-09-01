class BoatingTest

    @@all = []

    attr_accessor :student, :test_name, :test_status, :instructor
    attr_reader 
    attr_writer

    def initialize(student, test_name, test_status, instructor) #BoatingTest.new(student, test_name, test_status, instructor)
        @student = student
        @test_name = test_name
        @test_status  = test_status
        @instructor = instructor
        @@all << self
    end

    def self.all #BoatingTest.all
        @@all
    end


end