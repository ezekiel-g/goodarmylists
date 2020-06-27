class CreateKowArtefacts < ActiveRecord::Migration[6.0]
  	def change
    	create_table :kow_artefacts do |t|
    		t.string :name, null: false, unique: true
    		t.string :display_name, null: false
    		t.integer :points, null: false
    		t.boolean :is_heroic, null: false, default: false

    		t.belongs_to :game
    	end
  	end
end
