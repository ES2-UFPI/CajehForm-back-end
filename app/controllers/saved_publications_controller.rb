class SavedPublicationsController < ApplicationController
  before_action :set_saved_publication, only: [:show, :update, :destroy]

  # GET /saved_publications/1
  def show
    render json: @saved_publication
  end

  # POST /saved_publications
  def create
    @saved_publication = SavedPublication.new(saved_publication_params)

    if @saved_publication.save
      render json: @saved_publication, status: :created, location: @saved_publication
    else
      render json: @saved_publication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /saved_publications/1
  def destroy
    @saved_publication.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_publication
      @saved_publication = SavedPublication.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def saved_publication_params
      params.require(:saved_publication).permit(:user_id, :publication_id)
    end
end
