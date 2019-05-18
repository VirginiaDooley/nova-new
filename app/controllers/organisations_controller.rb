class OrganisationsController < ApplicationController

    def index
      @organisations = Organisation.all
      #explicit rendering; responds to request type 
      respond_to do |o|
        o.html {render :index}
        o.json {render json: @organisations}
      end
    end

    def show
      @organisation = Organisation.find(params[:id])
      @programme = Programme.new
    end

    def new
      @organisation = Organisation.new
    end

    def create
      @organisation = Organisation.new(org_params)
      if @organisation.save
        flash[:notice] = "Your Organisation was Created."
        redirect_to organisation_path(@organisation)
      else
        render :new
      end
    end

    def edit
      @organisation = Organisation.find(params[:id])
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
