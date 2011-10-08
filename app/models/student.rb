class Student < ActiveRecord::Base
  validates :name, :presence => true, :length => {:maximum => 200}
  validates :twitter, :uniqueness => true, :length => {:maximum => 100}
  validates :level, :presence => true, :length => {:maximum => 50}
  validates :email, :uniqueness => true, :presence => true, :length => {:maximum => 250}, :email_format => true
end
