class Place < ApplicationRecord
  has_many :destinations
  has_many :trips, through: :destinations
  has_one_attached :image

  after_update_commit { broadcast_replace_to(:places) } 
  after_create_commit { broadcast_append_to(:places) }
end
