require_relative '../app/models/student'
require_relative '../app/models/teacher'

module DistributeStudents
  def self.run
    students = Student.all
    teachers = Teacher.all
    students.map! do |student|
      teacher = teachers.pop 
      student.teacher_id = teacher.id
      student.save
      teachers.unshift(teacher)
    end
  end
end
