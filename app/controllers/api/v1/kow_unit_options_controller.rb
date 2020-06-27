class Api::V1::KowUnitOptionsController < ApiController
  	def index
      	unsorted_kow_unit_options = KowUnitOption.all
        kow_unit_options = unsorted_kow_unit_options.sort {
            |x, y| x.name.sub(/^(A|An|The)\s/i, "").downcase <=>
            y.name.sub(/^(A|An|The)\s/i, "").downcase
        }
      	render json: kow_unit_options
  	end
end