class KowUnit < ApplicationRecord
	validates :name, presence: true, uniqueness: true
	validates :display_name, presence: true
	validates :unit_type, presence: true
	validates :unit_type_index, presence: true, numericality: { only_integer: true }
	validates :unit_strength, presence: true, numericality: { only_integer: true }
	validates :points, presence: true, numericality: { only_integer: true }
	validates :limited_n, presence: true, numericality: { only_integer: true }
	validates :is_irregular, presence: true
	validates :unlocking_class, presence: true, numericality: { only_integer: true }

	belongs_to :game
	belongs_to :kow_army

    def army_name
        KowArmy.find_by(id: self.army_id).name
    end
end
