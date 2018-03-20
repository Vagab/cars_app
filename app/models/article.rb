class Article < ApplicationRecord
  belongs_to :car

  validates :title, :body, presence: true

end
