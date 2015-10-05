class Event < ActiveRecord::Base
  has_many :hangouts
  # has_many :responses, through: :hangouts
end
