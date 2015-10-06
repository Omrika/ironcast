class ResponsesController < ApplicationController

  def create
    @response = Response.new(response_params)
    @hangout = Hangout.find_by_id(params[:hangout_id])
    respond_to do |format|
      if @response.save
        format.html { redirect_to @hangout, notice: 'Response was successfully created.' }
        format.json { render action: 'show', status: :created, location: @response }
      else
        format.html { render action: 'new' }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
   @response = Response.find(params[:id])
 end


  private
  def response_params
    params.permit(:name)
  end
end
