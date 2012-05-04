class Character < ActiveRecord::Base
  validates :name, presence: true
  mount_uploader :charpic, CharPicUploader
end
