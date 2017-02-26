class Project < ApplicationRecord
  belongs_to :voluntary
  has_many :images
end
