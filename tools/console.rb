require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
joseph = Student.new("joseph")
cat = Student.new("cat")
pat = Student.new("pat")

kl = Instructor.new("teacher kl")
m = Instructor.new("teacher m")
a = Instructor.new("teacher a")

test1 = BoatingTest.new(joseph, "test1", "passed", a)
test1 = BoatingTest.new(joseph, "test7", "pending", a)
test2 = BoatingTest.new(pat, "test2", "pending", a)
test3 = BoatingTest.new(cat, "test3", "pending", kl)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

