class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: %w[Chinese Italian Japanese French Belgian] }
  has_many :reviews, dependent: :destroy
end
