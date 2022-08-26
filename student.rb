require './person'

# child class inheritance from person
class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end

student1 = Student.new(20, 'Ruby', 'Funda', parent_permission: false)
p student1
