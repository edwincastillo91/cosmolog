class Character < ActiveRecord::Base
  belongs_to :univers
  belongs_to :membership
end
