class Hangout < ActiveRecord::Base
  has_many :responses
  belongs_to :event
  has_many :hangout_responses, through: :responses
end
