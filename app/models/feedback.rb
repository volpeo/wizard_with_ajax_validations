class Feedback < ApplicationRecord
  attr_accessor :step

  validates :name, presence: true, if: "step == '1'"
  validates :rating, presence: true, if: "step == '2'"
  validates :content, presence: true, if: "step == '3'"
end
