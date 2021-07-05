class BoatingTest
    attr_reader :student, :instructor, :test_name
    attr_accessor :status

    @@all = []

    ###### Instance methods ######
    #Works!
    def initialize(student, instructor, test_name, status)
        @student = student
        @instructor = instructor
        @test_name = test_name
        @status = status

        @@all << self
    end


    ###### Class methods ######
    
    #Works!
    def self.all()
        @@all
    end
end
