class Product < ApplicationRecord
  enum :category, [:toys, :electronics, :food, :music]


  def self.ransackable_attributes(auth_object = nil)
    ["category", "created_at", "id", "name", "price", "updated_at"]
  end
end
