class ClientsController < ApplicationController

  def index
    #work dually with nested route vs accessing all clients in database
    if params.has_key?(:programme_id)
      programme = Programme.find(params[:programme_id])
      clients = programme.clients
      render json: clients
    else
      @clients = Client.all
    end
  end

  def show
    @client = Client.find(params[:id])
    @programme = @client.clients_programmes.find_by(programme_id: params[:programme_id])
    @clients_programmes = @client.clients_programmes

    respond_to do |format|
      format.html {render :show}
      format.json {render json: @client}
      format.json {render json: @clients_programmes}
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
    redirect_to client_path(@client)
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
