class HangoutsController < ApplicationController
  before_action :set_hangout, only: [:show, :edit, :update, :destroy]

  def index
    @hangouts = Hangout.all
  end

  def show
  end

  def new
    @hangout = Hangout.new
  end

  def create
    @hangout = Hangout.new(hangout_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to @hangout, notice: 'Hangout was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hangout }
      else
        format.html { render action: 'new' }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @hangout.update(post_params)
        format.html { redirect_to @hangout, notice: 'Hangout was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hangout.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @hangout.destroy
    respond_to do |format|
      format.html { redirect_to hangouts_url}
      format.json { head :no_content}
    end
  end

  private
    def set_hangout
      @hangout = Hangout.find(params[:id])
    end

    def post_params
      params.require(:hangout).permit(:name, :hours, :minutes, :description)
    end
end


