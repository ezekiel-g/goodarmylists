class Api::V1::WmrArmiesController < ApiController
  	def index
        unsorted_wmr_armies = WmrArmy.all
        wmr_armies = unsorted_wmr_armies.sort {
            |x, y| x.name.sub(/^(A|An|The)\s/i, "").downcase <=>
            y.name.sub(/^(A|An|The)\s/i, "").downcase
        }
    	render json: wmr_armies
  	end
end