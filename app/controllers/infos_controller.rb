class InfosController < ApplicationController

	before_action :logged_in?, only: [:create, :destroy]

  def create
    @info = current_user.infos.build(info_params)
    if @info.save
      flash[:success] = "Info Update!"
<<<<<<< HEAD
      redirect_to static_pages_splash_path
=======
      redirect_to root_url
>>>>>>> 6178b45cc6cd325010da6b71171f035b3e6e3c6d
    else
      render user
    end
  end

  def new
    @info = Info.new
  end


  def edit
    @info = current_user.infos.update(info_params)
  end

  def destroy
  end

  private

    def info_params
<<<<<<< HEAD
      params.require(:info).permit(:employeeno, :address, :contact, :nextofkin, :nationalins, :kinnumber, :ninumber, :carman, :carmodel, :licencep, :adaptions)
    end

end
=======
      params.require(:info).permit(:employeeno, :address, :contact, :nextofkin, :kinnumber)
    end

end

>>>>>>> 6178b45cc6cd325010da6b71171f035b3e6e3c6d
