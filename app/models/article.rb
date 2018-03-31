class Article < ApplicationRecord
  belongs_to :car
  has_many :images, as: :imageable, dependent: :destroy
  validates :title, :body, presence: true

  default_scope { order('created_at DESC') }
end
