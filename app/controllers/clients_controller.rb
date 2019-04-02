class ClientsController < ApplicationController

  def index
    @programme = Programme.find(params[:programme_id])
    @clients = @programme.clients
  end

  def show
    @client = Client.find(params[:id])
    @programmes = @client.programmes
    @programme = Programme.find(params[:id])
    @clients_programme = ClientsProgramme.new
    @outcome = Outcome.new
  end

  def new
    @programme = Programme.find(params[:programme_id])
    @client = @programme.clients.new
  end

  def create
    @programme = Programme.find(params[:programme_id])
    @client = Client.new(client_params)
    @client.programmes << @programme
    if @client.save!
      @client.clients_programmes
      flash[:notice] = "Your Client was Created"
      redirect_to programme_client_path(@programme, @client)
    else
      render "programmes"
    end
  end

  private

    def client_params
      params.require(:client).permit(:first_name, :last_name, :email, :phone, :address1, :address2, :city, :post_code, :country)
    end

end
