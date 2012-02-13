class Character < ActiveRecord::Base
  has_one :game
  belongs_to :player, :through => :games
end
