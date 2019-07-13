class Response < ApplicationRecord
  belongs_to :discussion

  validates :content, presence: true
end
