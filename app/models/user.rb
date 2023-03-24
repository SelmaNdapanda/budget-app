class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :groups
  has_many :transacs, foreign_key: :author_id

  validates :name, presence: true, length: { in: 1..50 }
  validates :email, presence: true, length: { in: 1..50 }, uniqueness: true
  validates :password, presence: true, length: { in: 6..50 }
end
