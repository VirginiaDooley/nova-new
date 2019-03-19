class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
  end

  def create
    @programme = Programme.find(params[:programme_id])
    @client = @programme.clients.build(client_params)
    if @client.save
      redirect_to programme_path(@programme)
    else
      render "programmes/show"
    end
  end

  private

    def client_params
      params.require(:client).permit(:first_name, :last_name, :email, :phone, :address1, :address2, :city, :post_code, :country)
    end

end
