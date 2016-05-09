class Ownership < ActiveRecord::Base
  belongs_to :artefact
  belongs_to :character
end
