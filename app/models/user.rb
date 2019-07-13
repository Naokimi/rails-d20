class User < ApplicationRecord
  has_many :discussions

  validates :nickname, presence: true, uniqueness: { case_sensitive: false }
end
