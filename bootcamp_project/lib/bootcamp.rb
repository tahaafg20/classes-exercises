class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @students = []
    @teachers = []
    @grades = Hash.new {|hash, key| @grades[key] = []}
  end
  def name
      return @name
  end
  def slogan
    return @slogan
  end
  def student_capacity
    return @student_capacity
  end
  def teachers
      return @teachers
  end
  def students
    return @students
  end
  def hire(teacher)
      @teachers << teacher
  end
  def enroll(student)
    if @students.length < student_capacity
      @students << student
      return true
    elsif @students.length == student_capacity
        return false
    end
  end
  def enrolled?(student)
      if @students.include?(student)
        return true
      else 
        return false
      end
  end
  def student_to_teacher_ratio
      return @students.length / @teachers.length
  end
  def add_grade(student, grade)
    if enrolled?(student)
      @grades[student] << grade
      return true
    else
        return false
    end
  end
  def num_grades(student)
      return @grades[student].length
  end
  def average_grade(student)
    if !@grades[student].empty?
    total = @grades[student].inject {|sum, ele| sum + ele}
    average = total / @grades[student].length
    return average
    elsif @grades[student].empty? || !enrolled?(student)
        nil
    end
  end
end
