class Api::V1::KowArmiesController < ApiController
  	def index
        unsorted_kow_armies = KowArmy.all
        kow_armies = unsorted_kow_armies.sort {
            |x, y| x.name.sub(/^(A|An|The)\s/i, "").downcase <=>
            y.name.sub(/^(A|An|The)\s/i, "").downcase
        }
    	render json: kow_armies
  	end
end