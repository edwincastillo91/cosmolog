class Membership < ActiveRecord::Base
  belongs_to :society
  has_many :characters
end
