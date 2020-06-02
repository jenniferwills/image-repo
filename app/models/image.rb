class Image < ApplicationRecord
  has_one_attached :file
  validates :file, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'], size: { less_than: 10.megabytes , message: 'is too big' }


end
