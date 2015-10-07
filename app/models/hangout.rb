class Hangout < ActiveRecord::Base
  has_many :responses
  belongs_to :event

  validates_presence_of :name, :description
  
end
