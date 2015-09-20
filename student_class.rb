class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 96)
steve = Student.new("Steve", 78)

puts "Well Done" if joe.better_grade_than?(steve)
joe.grade