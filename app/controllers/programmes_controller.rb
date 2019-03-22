class ProgrammesController < ApplicationController

  def index
    @programmes = Programme.all
  end

  def show
    #build in conditional if org id exists
    @organisation = Organisation.find(params[:id])
    @programme = Programme.find(params[:id])
  end

  def new
    @organisation = Organisation.find(params[:id])
    @programme = @organisation.programmes.build
  end

  def create
    @organisation = Organisation.find(params[:id])
    @programme = @organisation.programmes.build(programme_params)
    if @programme.save
      redirect_to organisation_path(@organisation.id)
    else
      render "organisations"
    end
  end

  private

    def programme_params
      params.require(:programme).permit(:title)
    end

end
