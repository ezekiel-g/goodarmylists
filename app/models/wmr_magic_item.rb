class WmrMagicItem < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :display_name, presence: true
	validates :magic_item_type, presence: true
	validates :points, presence: true, numericality: { only_integer: true }

	belongs_to :game
end