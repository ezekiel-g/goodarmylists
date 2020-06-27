class CreateKowUnits < ActiveRecord::Migration[6.0]
  	def change
    	create_table :kow_units do |t|
            t.string :name, null: false, unique: true
            t.string :display_name, null: false
            t.string :unit_type, null: false
            t.integer :unit_type_index, null: false
            t.string :unit_size, null: false
            t.integer :unit_strength, null: false
            t.integer :points, null: false
            t.integer :limited_n, null: false
            t.boolean :is_irregular, null: false, default: false
            t.integer :unlocking_class, null: false
            t.integer :spellcaster
            t.integer :height
            t.string :speed
            t.string :melee
            t.string :ranged
            t.string :defense
            t.string :attacks
            t.string :nerve
            t.text :special_rules
            t.text :special_rules_cont
            t.text :spells
            t.text :options
            t.text :keywords

            t.belongs_to :game
            t.belongs_to :kow_army
    	end
  	end
end
