require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Allen Shin")
s2 = Student.new("Jane Shin")

i1 = Instructor.new("Puff")
i2 = Instructor.new("Spongebob")

bt1 = BoatingTest.new(s1, "Test 1", "Pending", i1)
bt2 = BoatingTest.new(s2, "Test 2", "Pending", i1)
bt3 = BoatingTest.new(s1, "Test 3", "Pending", i2)
bt4 = BoatingTest.new(s2, "Test 4", "passed", i2)
bt5 = BoatingTest.new(s1, "Test 5", "passed", i1)
bt6 = BoatingTest.new(s2, "Test 6", "Pending", i1)
bt7 = BoatingTest.new(s1, "Test 7", "Pending", i2)
bt8 = BoatingTest.new(s2, "Test 8", "Pending", i2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

