class HolidaysController < ApplicationController

	before_action :logged_in?, only: [:create, :destroy]

		def create
	    @holiday = current_user.holidays.build(holiday_params)
	    if @holiday.save
	      flash[:success] = "Request placed!"
	      redirect_to static_pages_splash_path
	    else
	      render user
	    end
	end

	def new
		@holiday = Holiday.new
	end

	def edit
  		@holiday = current_user.holidays.update(holiday_params)
  	end
	
	def destroy
	end

	private

	def holiday_params
		params.require(:holiday).permit(:reason, :startdate, :enddate, :approved)
	end
	
end

