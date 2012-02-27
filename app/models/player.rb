class Player < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :truename, :format => { :with => /\A(\w+\s*)+\z/, :message => "truename is improperly formatted" }
end
