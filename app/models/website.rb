class Website < ApplicationRecord
  has_one_photo_attached :full_website
  has_one_photo_attached :mobile_website
end
