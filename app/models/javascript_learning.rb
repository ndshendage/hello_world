class JavascriptLearning < ActiveRecord::Base
  include AASM
  aasm column: :state do
  state :less
  state :dearth
  state :good
  end

  validates :function_name, :minimum, :maximum, presence: true
  validates :description, length: {minimum: 5, maximum:34, message: "Not valid size"}
  def  self.states
  	aasm.state.map(&:name)
  end
end
