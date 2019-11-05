class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    # * `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end


# * `Student.find_student` will take in a first name and output the student (Object) with that name

    def self.find_student(name)
        self.all.find {|student| student.first_name == name}
    end


# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)

    def grade_percentage
        total = 0
        student_tests = BoatingTest.all.select {|test| test.student == self}
        student_tests.each do |test|
            if test.test_status == "passed"
                total += 1
            end
        end
        average = total.to_f / student_tests.length
        average * 100
    end

end
