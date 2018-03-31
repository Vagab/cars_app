class Car < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :images, as: :imageable, dependent: :destroy

  validates :year, :manufacture, :model, presence: true

  default_scope { order('created_at DESC') }
  def full_name
    [self.manufacture, self.model, self.year].join(' ')
  end

end
