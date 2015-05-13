class EventsController < ApplicationController

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "You scheduled an event!"
      redirect_to root_url
    else
      redirect_to root_url
    end   
  end

  private

    def event_params
      params.require(:event).permit(:description, :date )
    end

end
