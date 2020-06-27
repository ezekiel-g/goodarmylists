class Api::V1::KowArtefactsController < ApiController
  	def index
      	unsorted_kow_artefacts = KowArtefact.all
        kow_artefacts = unsorted_kow_artefacts.sort {
            |x, y| x.name.sub(/^(A|An|The)\s/i, "").downcase <=>
            y.name.sub(/^(A|An|The)\s/i, "").downcase
        }
      	render json: kow_artefacts
    end
end