class Person < ActiveRecord::Base
  validates :terms, :acceptance => {:accept => true, message: "You have to accept the conditions before proceed"}
  #validates_acceptance_of :terms, message: "You have to agree before u create"
  validates :age, numericality: {only_integer: true, message: "Please enter the integer", allow_blank: true}
  #validates :age, presence: true, allow_blnk: true
  validates :name, presence: {message: "This field is required"}
  validates :name, uniqueness: {case_sensitive: true, message: "can not understand bb"}
end
