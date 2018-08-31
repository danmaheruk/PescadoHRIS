class LeavesController < ApplicationController

	before_action :logged_in?, only: [:create, :destroy]

	def create
	    @leave = current_user.leaves.build(leave_params)
	    if @leave.save
	      flash[:success] = "Request placed!"
	      redirect_to static_pages_splash_path
	    else
	      render user
	    end
	end

	def new
		@leave = Leave.new
	end

	def edit
  		@leave = current_user.leaves.update(leave_params)
  	end
	
	def destroy
	end

	private

	def leave_params
		params.require(:leave).permit(:reason, :startdate, :enddate, :approved)
	end
	
end
