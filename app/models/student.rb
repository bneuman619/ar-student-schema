require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
# implement your Student model here
  validates :email, :uniqueness => true, :format => { :with => /.+@.+\...+/ }
  validates :age, :numericality => { :greater_than => 5 }
  validates :pn_length, :numericality => { :greater_than => 9 }

  has_many :student_teachers, :foreign_key => :student_id
  has_many :teachers, :through => :student_teachers

  def name
    self.first_name + " " + self.last_name
  end

  def age
    ((Date.today - self.birthday) / 365).to_i
  end

  def pn_length
    self.phone.gsub(/\D/, '').length
  end
end
