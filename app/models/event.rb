class Event < ActiveRecord::Base
  belongs_to :univers
  belongs_to :place
end
