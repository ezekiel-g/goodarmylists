class Api::V1::KowUnitsController < ApiController
  	def index
      	unsorted_kow_units = KowUnit.all
        kow_units = unsorted_kow_units.sort {
            |x, y| x.display_name.gsub(/[[:punct:]]/, '').downcase <=>
            y.display_name.gsub(/[[:punct:]]/, '').downcase
        }
      	render json: kow_units
  	end
end