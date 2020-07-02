class Api::V1::KowArtifactsController < ApiController
  	def index
      	unsorted_kow_artifacts = KowArtifact.all
        kow_artifacts = unsorted_kow_artifacts.sort {
            |x, y| x.name.sub(/^(A|An|The)\s/i, "").downcase <=>
            y.name.sub(/^(A|An|The)\s/i, "").downcase
        }
      	render json: kow_artifacts
    end
end