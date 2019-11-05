class BoatingTest
  attr_accessor :student, :name, :status, :instructor

  @@all = []

  # should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
  def initialize(student, name, status, instructor)
    @student = student
    @name = name
    @status = status
    @instructor = instructor
    @@all << self
  end

  # BoatingTest.all returns an array of all boating tests
  def self.all
    @@all
  end
end

