class Group < ApplicationRecord
  belongs_to :user
  has_many :transacts

  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true
end
