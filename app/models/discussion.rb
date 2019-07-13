class Discussion < ApplicationRecord
  belongs_to :user
  has_many :responses

  validates :title, presence: true
  validates :user, presence: true
end
