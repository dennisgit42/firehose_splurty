class Quote < ApplicationRecord
  scope :created_before, ->(time) { where("created_at < ?", time) if time < Time.local(2017, 4, 20) }
  validates :saying, presence: true, length: {maximum: 140, minimum: 3}
  validates :author, presence: true, length: {maximum: 50, minimum: 3}
end
