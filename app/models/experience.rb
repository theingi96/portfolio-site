class Experience < ApplicationRecord
  validates :company, presence: true
  validates :position_title, presence: true
  validates :display_order, presence: true

  default_scope { order(display_order: :asc) }
end