class Realty < ApplicationRecord

  belongs_to :user
  belongs_to :city

  validates :title, presence: true
  validates :price, presence: true
  validates :description, presence: true

end
