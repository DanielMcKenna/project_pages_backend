class ProjectFolder < ApplicationRecord
  belongs_to :user
  has_many :projects
  validates :name, presense: true
end
