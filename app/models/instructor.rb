class Instructor
    @@all =[]
    attr_accessor :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def pass_student(student, test_name)
        all_tests = BoatingTest.all.map { |n|
            if n.student == student && n.test_name == test_name 
                return n.test_status = "passed"
            end
        }
        if all_tests.include?("passed") == false
            BoatingTest.new(student, test_name, "passed", self)
        end
        
    end

    def fail_student(student, test_name)
        all_tests = BoatingTest.all.map { |n|
            if n.student == student && n.test_name == test_name 
                return n.test_status = "failed"
            end
        }
        if all_tests.include?("failed") == false
            BoatingTest.new(student, test_name, "failed", self)
        end
        
    end
end


# Instructor#pass_student should take in a student instance and test name. 
# If there is a BoatingTest whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'.
# If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. 
# Either way, it should return the BoatingTest instance.
