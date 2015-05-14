class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "You scheduled an event!"
      redirect_to current_user
    else
      redirect_to root_url
    end   
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  private

    def event_params
      params.require(:event).permit(:description, :date )
    end

end
