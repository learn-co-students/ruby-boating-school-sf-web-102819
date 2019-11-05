class Student
    @@all = []
    attr_accessor :first_name

    def initialize (first_name)
        @first_name = first_name
        @@all << self
    end

    def add_boating_test(student, stest_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    def self.all
        @@all
    end

    def self.find_student(name)
        @@all.select { |n|
            n.first_name == name
        }
    end

    def grade_percentage
        pass_count = 0
        tests = BoatingTest.all.select { |n|
            n.student == self
        }
        test_count = tests.length
        tests.map { |n|
            if n.test_status == "passed"
                pass_count += 1
            end
        }
        pp pass_count
        pp test_count
        return pass_count/test_count.to_f * 100

    end

end
