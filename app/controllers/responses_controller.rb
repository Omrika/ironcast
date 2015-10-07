class ResponsesController < ApplicationController

 

  def new
    @response = Response.new
  end

  def create
    @response = Response.create(response_params)
    # @hangout = Hangout.find_by_id(params[:hangout_id])
    respond_to do |format|
      if @response.save
        # binding.pry
        format.html { redirect_to '/hangouts', notice: 'Response was successfully created.' }
        format.json { render action: 'index', status: :created, location: @response }
      else
        format.html { render action: 'new' }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    # binding.pry
   @response = Response.find(params[:id])
 end


  private
  def set_response
    @response = Response.find(params[:id])
  end

  def response_params
    params.require(:response).permit(:name, :hangout_id)
  end
end
