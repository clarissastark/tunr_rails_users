class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :user
  validates :artist, presence: true
  validates :title, presence: true
end
