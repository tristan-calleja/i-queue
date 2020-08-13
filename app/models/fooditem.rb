class Fooditem < ApplicationRecord
    has_and_belongs_to_many :menu
    has_one_attached :fooditem_image
    has_and_belongs_to_many :order
end
