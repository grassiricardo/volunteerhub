class Image < ApplicationRecord
  belongs_to :project
  mount_uploader :image_url, PhotoUploader
end
