class WmrSpell < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :display_name, presence: true
	validates :to_cast, presence: true
	validates :range, presence: true

	belongs_to :game
	belongs_to :wmr_army
end