class OrganisationsController < ApplicationController

    def index
      @organisations = Organisation.all
      #explicit rendering; responds to request type
      respond_to do |format|
        format.html {render :index}
        format.json {render json: @organisations}
      end
    end

    def show
      @organisation = Organisation.find(params[:id])
      @programme = Programme.new
      respond_to do |format|
        format.html {render :show}
        format.json {render json: @organisation}
      end
    end

    def new
      @organisation = Organisation.new
    end

    def create
      # binding.pry
      @organisation = Organisation.new(org_params)
        if @organisation.save
          respond_to do |f|
  				f.html {render :index}
  				f.json {render json: @organisations}
  			end
      else
        render :new
      end
    end

    def edit
      @organisation = Organisation.find(params[:id])
      respond_to do |format|
        format.html {render :show}
        format.json {render json: @organisation}
      end
    end

    def update
      @organisation = Organisation.find(params[:id])
      @organisation.update(org_params)
      redirect_to organisation_path(@organisation)
    end

    def destroy
      @organisation = Organisation.find(params[:id]).destroy
      redirect_to organisations_path
    end

    private

    def org_params
      params.require(:organisation).permit(:name, :website)
    end

end
