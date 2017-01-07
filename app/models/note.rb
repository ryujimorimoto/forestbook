class Note < ActiveRecord::Base
  belongs_to :user
  # Noteのデータが削除されたときに、それに紐付いたいいね！も消えるようにしてください
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user

  validates :title, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end
