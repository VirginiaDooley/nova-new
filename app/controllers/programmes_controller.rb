class ProgrammesController < ApplicationController

  def index
    @programmes = Programme.all
  end

  def show
    @programme = Programme.find(params[:id])
  end

  def create
    @organisation = Organisation.find(params[:organisation_id])
    @programme = @organisation.programmes.build(programme_params)
    if @programme.save
      redirect_to organisation_path(@organisation)
    else
      render: index
    end 
  end

  private

  def programme_params
    params.require(:programme).permit(:title)
  end


end
