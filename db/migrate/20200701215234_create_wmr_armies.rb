class CreateWmrArmies < ActiveRecord::Migration[6.0]
	def change
		create_table :wmr_armies do |t|
			t.string :name, null: false, unique: true
			t.string :display_name, null: false
			t.string :adjective, null: false
			t.text :special_rules

			t.belongs_to :game
		end
	end
end
