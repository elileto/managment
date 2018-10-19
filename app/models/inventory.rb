class Inventory < ApplicationRecord
    has_many :materials
    has_many :inventory_entries
end
