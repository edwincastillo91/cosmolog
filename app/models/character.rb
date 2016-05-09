class Character < ActiveRecord::Base
  belongs_to :univers
  belongs_to :membership
  has_many :ownerships
end
