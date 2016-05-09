class Place < ActiveRecord::Base
  belongs_to :univers
  has_many :events
end
