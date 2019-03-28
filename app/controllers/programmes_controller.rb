class ProgrammesController < ApplicationController

  def index
    @programmes = Programme.all
  end

  def show
    @programme = Programme.find(params[:id])
    @client = Client.new
  end

  def new
    @organisation = Organisation.find(params[:organisation_id])
    @programme = @organisation.programmes.new
  end

  def create
    @organisation = Organisation.find(params[:organisation_id])
    @programme = @organisation.programmes.build(programme_params)
    if @programme.save
      flash[:notice] = "Your Programme was Created"
      redirect_to organisation_programme_path(@organisation.id, @programme)
    else
      flash[:notice] = "Please try again."
      render "organisations"
    end
  end

  private

    def programme_params
      params.require(:programme).permit(:title)
    end

end
