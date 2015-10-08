# class HangoutsController < ApplicationController
# 	def index
# 		@hangouts = Hangout.order(created_at: :desc).all 
# 		@hangout = Hangout.new
# 		@response = Response.new
# 	end


# 	def create
# 		@hangout = Hangout.create(hangout_params)
# 		@response = Response.create(:hangout_id => @hangout.id)
# 			if @hangout.save
# 				redirect_to '/hangouts'
# 			else
# 				render 'new'
# 			end
# 		end

# 		def show
# 			@hangout = Hangout.find(params[:id])
# 		end

# 	private 
# 	def hangout_params
# 		params.require(:hangout).permit(:name, :description, :hours, :minutes, :meridiem, :response => [])
# 	end
# end


class HangoutsController < ApplicationController
  before_action :set_hangout, only: [:show, :edit, :update, :destroy]

  def index
    @hangouts = Hangout.order(created_at: :desc).all
    @hangout = Hangout.new
    @response = Response.new
  end

  def new
    @event = Event.find(params[:event_id])
    @hangout = Hangout.new
  end

  def show
  end

  def create
    # binding.pry
    @hangout = Hangout.create(hangout_params)
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
    @hangout.destroy
    redirect_to '/hangouts'
  end 

  private
    def set_hangout
      @hangout = Hangout.find(params[:id])
    end

    def hangout_params
      params.require(:hangout).permit(:name, :hours, :minutes, :meridiem, :event_id, :description, :responses => [])
    end
end


