require_relative '../app/models/student'

module StudentsConcat
  def self.update
    students = Student.all
    students.each do |student|
      student.name = student.first_name + " " + student.last_name
      student.save
    end
  end
end



