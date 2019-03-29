class ClientsController < ApplicationController

  def index
    @programme = Programme.find(params[:programme_id])
    @clients = @programme.clients
  end

  def show
    @programme = Programme.find(params[:programme_id])
    @client = Client.find(params[:id])
    @outcome = Outcome.new
  end

  def new
    @programme = Programme.find(params[:programme_id])
    @client = @programme.clients.new
  end

  def create
    @programme = Programme.find(params[:programme_id])
    @client = @programme.clients.create(client_params)
    if @client.save
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
