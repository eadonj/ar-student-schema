require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  
  validates_format_of :email, :with => /.+@+.+[\.]+..+/
  validates_uniqueness_of :email
  validates_format_of :phone, :with => /^[()0-9\-\+\sx]+/
  validates_length_of :phone, :minimum => 10
                  
end
