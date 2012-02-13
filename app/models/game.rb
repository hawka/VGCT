class Game < ActiveRecord::Base
  has_many :characters
  belongs_to :player
end
