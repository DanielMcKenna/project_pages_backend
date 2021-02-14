class ProjectComment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  validates :body, presense: true
end
