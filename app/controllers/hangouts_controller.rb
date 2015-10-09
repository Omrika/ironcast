class HangoutsController < ApplicationController
  before_action :set_hangout, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user! , only: [:create, :new]

  def index
    @hangouts = Hangout.order(created_at: :desc).all
    @hangout = Hangout.new
    @response = Response.new
    @hangouts.each do |hangout|
      if hangout.created_at < (DateTime.current - 24.hours)
        hangout.destroy
      end
    end
  end

  def new
    @event = Event.find(params[:event_id])
    @hangout = Hangout.new
  end

  def show
  end

  def create
    @user = current_user
    @hangout = Hangout.create(hangout_params)
    @hangout.user_id = current_user.id
    @hangout.save
    respond_to do |format|
      if @hangout.save
        format.html { redirect_to '/hangouts', notice: 'Hangout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hangout }
      else
        format.html { render action: 'new' }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @hangout.update(hangout_params)
        format.html { redirect_to @hangout, notice: 'Hangout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if @hangout.user_id == current_user.id
      @hangout.destroy
    end
    redirect_to '/hangouts'
  end 

  private
    def set_hangout
      @hangout = Hangout.find(params[:id])
    end

    def hangout_params
      params.require(:hangout).permit(:name, :hours, :minutes, :meridiem, :event_id, :description, :user_id, :responses => [])
    end
end


