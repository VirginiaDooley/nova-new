class OrganisationsController < ApplicationController

    def index
      @organisations = Organisation.all
    end

    def show
      @organisation = Organisation.find(params[:id])
    end

    def new
      @organisation = Organisation.new
    end

    def create
      @organisation = Organisation.create(org_params)

      redirect_to @organisation
    end

    def edit
    end

    def destroy
    end

    private

    def org_params
      params.require(:organisation).permit(:name)
    end
end
