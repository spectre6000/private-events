class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "You scheduled an event!"
      redirect_to root_url
    else
      redirect_to root_url
    end   
  end

  def show
    @event = Event.find(params[:id])
  end

  def all
    @events = Event.all
  end

  private

    def event_params
      params.require(:event).permit(:description, :date)
    end

end
