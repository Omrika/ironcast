class Response < ActiveRecord::Base
  belongs_to :hangouts
  has_many :hangout_responses, through: :hangouts
end
