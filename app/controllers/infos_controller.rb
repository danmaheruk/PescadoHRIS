class InfosController < ApplicationController

	before_action :logged_in?, only: [:create, :destroy]

  def create
    @info = current_user.infos.build(info_params)
    if @info.save
      flash[:success] = "Info Update!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def new
  end

  def edit
    @info = current_user.infos.update(info_params)
  end

  def destroy
  end

  private

    def info_params
      params.require(:info).permit(:employeeno, :address, :contact, :nextofkin, :kinnumber)
    end

end

