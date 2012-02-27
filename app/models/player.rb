class Player < ActiveRecord::Base
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :truename, :format => { :with => /\A[a-zA-Z]+\z/, :message => "truename may only use letters" }
end
