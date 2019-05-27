class ProgrammesController < ApplicationController

  def index
    @programmes = Programme.all
    respond_to do |format|
      format.html {render :index}
      format.json {render json: @programmes}
      format.json {render json: @clients}
    end
  end

  def show
    @programme = Programme.find(params[:id])
    @client = Client.new

    respond_to do |format|
      format.html {render :show}
      format.json {render json: @programme}
      format.json {render json: @client}
    end
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
      render :new
    end
  end

  def edit
    @programme = Programme.find(params[:id])
  end

  def update
    @client = Client.find(params[:client_id])
    @programme = Programme.find(params[:id])
    if @client.update(client_params)
      @client.programmes << @programme
      redirect_to @client
    else
      render :new
    end
  end

  def destroy
    @programme = Programme.find(params[:id]).destroy
    redirect_to programmes_path
  end

  private

    def programme_params
      params.require(:programme).permit(:title, :clients_attributes => [:first_name, :last_name, :email, :phone, :address1, :address2, :city, :post_code, :country])
    end

end
