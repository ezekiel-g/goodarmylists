class Api::V1::WmrSpellsController < ApiController
  	def index
      	unsorted_wmr_spells = WmrSpell.all
        wmr_spells = unsorted_wmr_spells.sort {
            |x, y| x.name.sub(/^(A|An|The)\s/i, "").downcase <=>
            y.name.sub(/^(A|An|The)\s/i, "").downcase
        }
      	render json: wmr_spells
    end
end