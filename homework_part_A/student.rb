class Student
  attr_accessor :name, :cohort
   
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name
    return name
  end

  def student_cohort
    return cohort
  end


# def student_speak(words)
#   return words
  def speak()
    return "I can talk!"
  end

  def language(favourite)
    return "I love " + favourite
  end

end
