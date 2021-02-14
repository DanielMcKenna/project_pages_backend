class User < ApplicationRecord
  has_secure_password
  has_many :project_folders
  has_many :project_comments
  validates :first_name, :last_name, :email, presence: true
  validates :username, :email, uniqueness: true
end
