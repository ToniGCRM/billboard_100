class Artist < ApplicationRecord
  belongs_to :billboard
  validates :name, uniqueness: true
end
