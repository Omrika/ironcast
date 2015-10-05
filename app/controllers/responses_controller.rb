class ResponsesController < ApplicationController

  def create
    @response = Response.new(response_params)
    @response.update(hangout_id: params[:hangout_id])
  end

  private
  def response_params
    params.permit(:name)
  end
end
