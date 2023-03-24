class Transac < ApplicationRecord
  belongs_to :author, class_name: 'User'
  belongs_to :group

  validates :name, :author, :group, :amount, presence: true

  def date
    date = ''
    date += "#{created_at.day} "
    date += "#{Date::ABBR_MONTHNAMES[created_at.month]} "
    date += created_at.year.to_s
    date
  end
end
