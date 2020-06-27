class KowArmy < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :alignment, presence: true, inclusion: { in: %w(Good Evil Neutral),
    message: "%{value} is not a valid alignment" }

	belongs_to :game
	has_many :kow_units, dependent: :destroy

	def all_units
		KowUnit.where(army_id: self.id)
	end

	def all_unit_names
		unsorted_names = []
		units = KowUnit.where(army_id: self.id)
		units.each do |unit|
			unsorted_names << unit.name
		end
		names = unsorted_names.sort {
			|x, y| x.name.sub(/^(A|An|The)\s/i, "").downcase <=>
            y.name.sub(/^(A|An|The)\s/i, "").downcase
		}
		names
	end
end