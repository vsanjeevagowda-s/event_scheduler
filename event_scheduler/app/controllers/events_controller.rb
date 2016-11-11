class EventsController < ApplicationController
	def new
		binding.pry
		@users=User.all
	end

	def index
		# binding.pry
		@events=current_user.events
	end


	def create
		binding.pry
		User.find(current_user).events << Event.new(event_params)

	end


	private
	def event_params
		params.require(:user).permit(:title, :venue, :date, :time, :desc)
	end
end
