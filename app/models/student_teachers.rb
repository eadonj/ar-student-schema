require_relative '../../db/config'

class StudentTeachers < ActiveRecord::Base
  
  belongs_to :student
  belongs_to :teacher
  
  def self.balance!
    students = Student.all
    teachers = Teacher.all
    students.map! do |student|
      teacher = teachers.pop 
      self.create!({student_id: student.id, 
                    teacher_id: teacher.id})
      teachers.unshift(teacher)
    end
  end
end
