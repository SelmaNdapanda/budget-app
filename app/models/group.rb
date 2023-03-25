class Group < ApplicationRecord
  belongs_to :user
  has_many :group_transacs
  has_many :transacs, through: :group_transacs

  validates :name, presence: true, uniqueness: true
  validates :icon, presence: true

  def total_amount
    total = 0
    transacs.each do |t|
      total += t.amount
    end
    total
  end

  def date
    date = ''
    date += "#{created_at.day} "
    date += "#{Date::ABBR_MONTHNAMES[created_at.month]} "
    date += created_at.year.to_s
    date
  end
end
