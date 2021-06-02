module Api
  module V1
      class DescriptionsController < ApplicationController

        protect_from_forgery with: :null_session
        
        def create
          description = Description.new(description_params)

          if description.save
            render json: DescriptionSerializer.new(description).serialized_json
          else
            render json: {error: description.errors.messages}, status: 422
          end
        end

        def destroy
          description = Description.find(params[:id])

          if description.destroy
            head :no_content
          else
            render json: {error: description.errors.messages}, status: 422
          end
        end
        
        private
        def description_params
          params.require(:description).permit(:author, :book_id)
        end
    end
  end
end