class Project < ApplicationRecord
  belongs_to :voluntary
  has_many :images
  searchkick
  after_save :reindex_property

  def reindex_property
    Project.reindex
  end
end
