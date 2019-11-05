class Student
  attr_accessor :first_name

  @@all = []

  # should initialize with first_name
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  # Student.all should return all of the student instances
  def self.all
    @@all
  end

  # Student#add_boating_test should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  # Student.find_student will take in a first name and output the student (Object) with that name
  def self.find_student(first_name)
    Student.all.select { |student| student.first_name == first_name }
  end

  #loop through boatingtest and find all the test this student has taken
  def boating_tests
    BoatingTest.all.select { |bt| bt.student == self }
  end

  # Student#grade_percentage should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
  def grade_percentage
    #find all the test scores for this student and do math
    arr = boating_tests.map { |bt| bt.status } #=> [t, f, t, t]
    count = 0.0
    arr.each do |ele|
      if ele == "passed"
        count += 1
      end
    end
    # binding.pry
    # puts "hi"
    count / arr.length
  end

end