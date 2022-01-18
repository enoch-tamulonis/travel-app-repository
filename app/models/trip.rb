class Trip < ApplicationRecord
  has_rich_text :purpose
  has_many :destinations
  has_many :places, through: :destinations
end
