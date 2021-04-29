class EventsController < ApplicationController
  before_action :authorize!, except: [:index]
  	
  def index
  	@events = Event.order(:created_at)
  end

  def show
  	event = Event.find(params[:id])
  	@event_details = { title: event.title,
  										description: event.description, 
  										organized_at: event.organized_at,
  										users: event.users.pluck(:name,:gender) }
  end

  def attend
   	event_user = EventUser.new(event_id:params[:id],user_id:current_user.id)
  	if event_user.save
  		flash[:success] = "You can attend the event."
  		redirect_to '/'
  	end
  end
end
