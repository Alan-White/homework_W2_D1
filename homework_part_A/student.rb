class Student
  attr_accessor :name, :cohort
   
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end


  def speak()
    return "I can talk!"
  end

  def language(favourite)
    return "I love " + favourite
  end

end
