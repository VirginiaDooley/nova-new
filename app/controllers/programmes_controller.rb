class ProgrammesController < ApplicationController

  def index
    @programmes = Programme.all
  end

  def show
    @programme = Programme.find(params[:id])
  end

  def create
    @organisation = Organisation.find(params[:organisation_id])
    # raise @organisation.inspect
    @programme = @organisation.programmes.build(programme_params)
    # raise @programme.inspect
    if @programme.save
      redirect_to organisation_path(@organisation)
    else
      render "organisations/show"
    end
  end

  def edit
    @programme = Programme.find(params[:id])
  end

  def update
    @programme = Programme.find(params[:id])
    @programme.update(programme_params)
    redirect_to organisation_programme_path(@organisation)
  end

  def destroy
    @programme = Programme.find(params[:id]).destroy
    redirect_to organisation_programmes_path
  end

  private

    def programme_params
      params.require(:programme).permit(:title)
    end

end
