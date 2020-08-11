class Fooditem < ApplicationRecord
    belongs_to :menu
    has_one_attached :fooditem_image

end
