class Website < ApplicationRecord
  has_one_attached :full_website
  has_one_attached :mobile_website
end
