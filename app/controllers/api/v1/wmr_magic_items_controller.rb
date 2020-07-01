class Api::V1::WmrMagicItemsController < ApiController
  	def index
      	unsorted_wmr_magic_items = WmrMagicItem.all
        wmr_magic_items = unsorted_wmr_magic_items.sort {
            |x, y| x.name.sub(/^(A|An|The)\s/i, "").downcase <=>
            y.name.sub(/^(A|An|The)\s/i, "").downcase
        }
      	render json: wmr_magic_items
    end
end