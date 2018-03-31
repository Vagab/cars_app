class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
  has_attached_file :data, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :data, content_type: /\Aimage\/.*\z/
end
