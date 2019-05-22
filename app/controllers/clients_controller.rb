class ClientsController < ApplicationController

  def index
    @clients = Client.all
    # @programme = Programme.find(params[:programme_id])
    # @clients = @programme.clients
    # @clients_programmes = @programme.clients_programmes
  end

  def show
    @client = Client.find(params[:id])
    @programme = @client.clients_programmes.find_by(programme_id: params[:programme_id])
    @clients_programmes = @client.clients_programmes

    respond_to do |format|
      format.html {render :index}
      format.json {render json: @client}
    end
  end

  def new
    @programme = Programme.find(params[:programme_id])
    @client = @programme.clients.new
  end

  def create
    @programme = Programme.find(params[:programme_id])
    # raise params.inspect
    @client = Client.find_by(id: client_params[:id]) || Client.new(client_params)
    if @client.id
      flash[:notice] = "Your Client has been added to #{@programme.title}"
      val =  "Your Client has been added to #{@programme.title}"
    elsif @client.save
      flash[:notice] = "Your Client was Created"
      val =  "Your Client was Created"
    else
      render :new
      val =  'in else block'
    end
    # byebug
    @client.programmes << @programme
    ClientsProgramme.last.update(client_status_params)
    redirect_to programme_client_path(@programme, @client)
  end

  def edit
  end

  def update
  end

  private

    def client_params
      params.require(:client).permit(:first_name, :last_name, :email, :phone, :address1, :address2, :city, :post_code, :country, :id)
    end

    def client_status_params
      params.require(:client).require(:clients_programme).permit(:client_status, :programme_term, :programme_year, :client_id, :programme_id)
    end

end
