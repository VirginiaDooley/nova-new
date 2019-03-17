class ProgrammesController < ApplicationController

    def index
      @programmes = Programme.all
    end

    def show
      @programme = Programme.find(params[:id])
    end

    def new
      @programme = Programme.new
    end

    def create
      @programme = Programme.create(programme_params)

      redirect_to @programme
    end

    def edit
      @programme = Programme.find(params[:id])
    end

    def update
      @programme = Programme.find(params[:id])
      @programme.update(programme_params)
      redirect_to programme_path(@programme)
    end

    def destroy
      @programme = Programme.find(params[:id]).destroy
      redirect_to programmes_path

    end

    private

    def org_params
      params.require(:programme).permit(:title)
    end
end
