class Manufacture < ApplicationRecord
    has_and_belongs_to_many :materials
    has_many :orders
end
