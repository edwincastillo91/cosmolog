class Participation < ActiveRecord::Base
  belongs_to :event
  belongs_to :character
  belongs_to :experience
end
