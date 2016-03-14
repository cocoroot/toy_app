class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :content, presence: true, length: {minimum: 5, maximum: 30}
  validates :user_id, presence: true
end
