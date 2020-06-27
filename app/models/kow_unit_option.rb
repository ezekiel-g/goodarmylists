class KowUnitOption < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :display_name, presence: true
	validates :points, presence: true, numericality: { only_integer: true }
	validates :is_spell, presence: true
	validates :is_unique, presence: true

	belongs_to :game
	belongs_to :kow_unit
end