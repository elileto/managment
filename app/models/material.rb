class Material < ApplicationRecord
    has_one :cost
    has_many :order_items
    has_and_belongs_to_many :manufactures
    has_and_belongs_to_many :products
end
