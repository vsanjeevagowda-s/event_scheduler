class EventsController < ApplicationController
	before_action :list_participents 

	def new
		# binding.pry
		@users=User.all
	end

	def index
		# binding.pry
		@events=current_user.events
	end


	def create
		
		u=User.find(current_user).events << Event.new(event_params)
		
		@par=Participent.new
		if params["user_ids"].present?
		 params["user_ids"].map {|i| i.to_i}.each do |i|
		 @par.user=User.find(i)
		 @par.event=Event.last
		 @par.save
end
end
		 redirect_to list_events_path
		end


	


	def list_participents
		# binding.pry
		if params["user_id"] && params["event_id"]
		@participents=User.find(params["user_id"]).events.find_by_id(params["event_id"]).participents

	end
	end


	private
	def event_params
		params.require(:user).permit(:title, :venue, :date, :time, :desc)
	end
end
