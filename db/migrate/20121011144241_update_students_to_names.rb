require_relative '../config'

class UpdateStudentsToNames < ActiveRecord::Migration
  
  def change
    add_column :students, :name, :string
    add_column :students, :address, :string
  end
end
