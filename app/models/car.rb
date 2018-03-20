class Car < ApplicationRecord
  has_many :articles

  validates :year, :manufacture, :model, presence: true

  def full_name
    [self.manufacture, self.model, self.year].join(' ')
  end

end
