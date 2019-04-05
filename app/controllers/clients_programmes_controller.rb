class ClientsProgrammesController < ApplicationController

  def index
    @clients_programmes = ClientsProgramme.all
  end

    def show
    @clients_programme = ClientsProgramme.find_by(params[:id])
  end

  def new
    @clients_programme = ClientsProgramme.new
  end

  def create
    @clients_programme = ClientsProgramme.new(clients_programme_params)
    @clients_programme.save!
    redirect_to programme_client_path
  end

  def edit
    @clients_programme = ClientsProgramme.find(params[:id])
  end

  def update
    @clients_programme = ClientsProgramme.find(params[:id])
    @clients_programme.update!(clients_programme_params)
    redirect_to clients_programme_path(@clients_programme)
  end

  private

  def clients_programme_params
    params.require(:clients_programme).permit(:client_status, :programme_term, :programme_year, :client_id, :programme_id)
  end

  def client_status_params
    params.require(:clients_programme).permit(:client_status, :client_id, :programme_id)
  end
end
