class Car < ApplicationRecord
  validates :year, :manufacture, :model, presence: true
  
  def full_name
    [self.year, self.manufacture, self.model].join(' ')
  end

end
