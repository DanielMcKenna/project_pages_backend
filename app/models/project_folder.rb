class ProjectFolder < ApplicationRecord
  belongs_to :user
  has_many :projects
  validates :name, presence: true

  def project_count
    self.projects.count
  end
end
