class Student
  attr_accessor :name # create getter and setter methods
  attr_reader :gpa # create getter only
  attr_writer :password # create setter only
  # code goes in here
  def write_code
    puts "All this hacking is making me thirsty."
  end

  protected
  def secret_student_handshake
      # How the heck do I code a handshake?
  end

  def initialize (name, studentID,gpa = 0, password = "")
    @name = name
    @studentID = studentID
    @gpa = gpa
    @password =  password
     puts "#{@name} at your services"
  end


end





a_student = Student.new # Check it out: Instantiation
a_student.write_code

class Zombie
  def greetings
    @name = "Wally Glutton"
    puts "#{@name} want Brainz!"
  end
  def name # A 'getter' method.
    @name  # Returns the value of this instance variable.
  end
end

walter = Zombie.new

walter.greetings
puts walter.name