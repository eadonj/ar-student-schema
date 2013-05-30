require 'rspec'
require 'date'
require_relative '../app/models/student'
require_relative '../app/models/teacher'


describe Teacher, "validations" do

  before(:all) do
    raise RuntimeError, "be sure to run 'rake db:migrate' before running these specs" unless ActiveRecord::Base.connection.table_exists?(:students).should be_true
    Teacher.delete_all

    @teacher = Teacher.new
    @teacher.assign_attributes(
      :name => "Happy",
      :address => "blah",
      :email => "blah@blah.com",
      :phone => "555-555-5555"
    )
    @teacher.save
  end
  
  it "should accept valid info" do
    @teacher.should be_valid
  end
  
  it "shouldn't allow two teacher with the same email" do
    @another_teacher = Teacher.new(
      :name => "Sad",
      :address => "blah2",
      :email => "blah@blah.com",
      :phone => "555-555-5555"
    )
    @another_teacher.should_not be_valid
  end

end
