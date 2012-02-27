class Game < ActiveRecord::Base
  validate :title, presence: true
  validate :description, :presence => true, :length => { :within => 1..1000 } 
end
