require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, :uniqueness => true, :format => { :with => /.+@.+\...+/ }
  validates :name, :uniqueness => true

  has_many :student_teachers, :foreign_key => :teacher_id
  has_many :students, :through => :student_teachers
end
