class Article < ApplicationRecord
  belongs_to :car
  validates :title, :body, presence: true

  def bodyshow
    [self.title, self.body].join(' ')
  end

end
