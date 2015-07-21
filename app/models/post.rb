class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :user_id, presence: true
  validates :caption, length: { minimum: 2, maximum: 300 }

  has_attached_file :image, styles: { medium: "640x" }
  validates_attachment :image, :presence => true,
    content_type: { content_type: /\Aimage\/.*\Z/ },
    size: { less_than: 2.megabytes }
end
