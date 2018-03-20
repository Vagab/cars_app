class Article < ApplicationRecord
  belongs_to :car

  validates :title, :body, presence: true

  def full_aricle
    [self.title, self.body].join(' ')
  end

end
