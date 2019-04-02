class ClientsProgrammesController < ApplicationController

  def new
    @client = Client.find(params[:client_id])
    @clients_programme = ClientsProgramme.new
  end

  def create
    @clients_programme = ClientsProgramme.new(clients_programme_params)
    @clients_programme.save
    redirect_to programme_client_path(@clients_programme.programme_id, @clients_programme.client_id)
  end

  def update
  end

  private

  def clients_programme_params
    params.require(:clients_programme).permit(:client_status, :programme_term, :programme_year, :client_id, :programme_id)
  end
end
