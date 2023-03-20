class Transac < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group

  validates :name, presence: true, length: { in: 1..50 } 
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :password, presence: true, length: { in: 6..50 } 
end
