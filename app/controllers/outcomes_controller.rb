class OutcomesController < ApplicationController

  def index
    @client = Client.find(params[:id])
    @outcomes = @client.outcomes
  end

  def show
    @outcome = Outcome.find(params[:id])
  end

  def new
    @client = Client.find(params[:client_id])
    @outcome = @client.outcomes.new
  end

  def create
    @client = Client.find(params[:client_id])
    @outcome = @client.outcomes.build(outcome_params)
    if @outcome.save!
      flash[:notice] = "Your Outcome was Created."
      redirect_to client_outcome_path(@client, @outcome)
    else
      flash[:notice] = "Please try again."
      render "index"
    end
  end

  private

    def outcome_params
      params.require(:outcome).permit(:grade, :description)
    end

end
