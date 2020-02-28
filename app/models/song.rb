class Song < ApplicationRecord
  belongs_to :artist
  validates :name, :genre, presence: true
end
