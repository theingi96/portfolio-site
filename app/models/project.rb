class Project < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :position, presence: true

  default_scope { order(position: :asc) }
end