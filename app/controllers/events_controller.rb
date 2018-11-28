class EventsController < ApplicationController
	before_action :set_event, only: [:show, :destroy, :edit, :update]
  before_action :authenticate_user!
  
  def index
  	@events = Event.all
  end

  def show
  	
  end

  def new
  	@event = Event.new
  end

  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Your event is now online.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    resond_to do |format|
     
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Your information was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

<<<<<<< HEAD
  def show
  end


=======
  def destroy

    @event.destroy
    respond_to do |format|
      format.html { redirect_to homepage_url, notice: 'Event was removed.' }
      format.json { head :no_content }
    end
  end


	private

	def set_event
		@event = Event.find(params[:id])
	end

  def event_params
    params.require(:event).permit(:title, :summary, :location, :event_date, :approved_ids, :max_attendees)
  end

>>>>>>> b0b548c5ad09c737b173b87689011311aa9cdb12
end
