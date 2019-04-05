class ClientsController < ApplicationController

  def index
    @programme = Programme.find(params[:programme_id])
    @clients = @programme.clients
    @clients_programmes = @programme.clients_programmes
  end

  def show
    @client = Client.find(params[:id])
    @programme = @client.clients_programmes.find_by(programme_id: params[:programme_id])
    @clients_programmes = @client.clients_programmes
  end

  def new
    @programme = Programme.find(params[:programme_id])
    @client = @programme.clients.new
  end

  def create
    @programme = Programme.find(params[:programme_id])
    @client = Client.new(client_params)
    if @client.save
      @client.programmes << @programme
      ClientsProgramme.last.update(client_status_params)
      flash[:notice] = "Your Client was Created"
      redirect_to programme_client_path(@programme, @client)
    else
      render :new
    end
  end

  private

    def client_params
      params.require(:client).permit(:first_name, :last_name, :email, :phone, :address1, :address2, :city, :post_code, :country)
    end

    def client_status_params
      params.require(:client).require(:clients_programme).permit(:client_status, :programme_term, :programme_year, :client_id, :programme_id)
    end

end
