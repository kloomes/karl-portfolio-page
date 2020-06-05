class Website < ApplicationRecord
  has_one_attached :full_website
  has_one_attached :mobile_website

  validates :full_website, presence: true
  validates :mobile_website, presence: true
end
