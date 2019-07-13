class User < ApplicationRecord
  has_many :discussions
  has_many :responses

  validates :nickname, presence: true, uniqueness: { case_sensitive: false }
end
