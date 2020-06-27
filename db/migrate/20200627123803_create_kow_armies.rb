class CreateKowArmies < ActiveRecord::Migration[6.0]
  	def change
    	create_table :kow_armies do |t|
    		t.string :name, null: false, unique: true
    		t.string :alignment, null: false  
    		t.string :adjective, null: false

    		t.belongs_to :game
    	end
  	end
end
