class Api::V1::WmrUnitsController < ApiController
  	def index
      	unsorted_wmr_units = WmrUnit.all
        wmr_units = unsorted_wmr_units.sort {
            |x, y| x.display_name.gsub(/[[:punct:]]/, '').downcase <=>
            y.display_name.gsub(/[[:punct:]]/, '').downcase
        }
      	render json: wmr_units
  	end
end