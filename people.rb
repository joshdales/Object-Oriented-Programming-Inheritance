class Person

  def initialize(name)
    @name = name
  end

  def greeting
    "Hi, my name is #{@name}"
  end

end

class Student < Person

  def learn
    "I get it!"
  end

end

class Instructor < Person

  def teach
    "Everything in Ruby is an Object!"
  end

end

instructor = Instructor.new('Nadia')
puts instructor.greeting

student = Student.new('Chris')
puts student.greeting

puts instructor.teach
puts student.learn

puts student.teach # Student and Instructor both inherit methods from Person, but can not see each other's methods. They can take from parents - not sibilings
