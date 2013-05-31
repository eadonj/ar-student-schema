require_relative '../config'

class UpdateColumnsToStudents < ActiveRecord::Migration
  def change
    add_timestamps(:students)
  end
end
