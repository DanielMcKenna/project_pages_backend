class Project < ApplicationRecord
  belongs_to :project_folder
  has_many :project_comments
  validates :name, :description, :project_link, presense: true
end
