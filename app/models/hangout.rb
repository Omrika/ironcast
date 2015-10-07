class Hangout < ActiveRecord::Base
  has_many :responses
  belongs_to :event
  
end
