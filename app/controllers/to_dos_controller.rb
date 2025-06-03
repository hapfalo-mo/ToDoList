class ToDosController < ApplicationController
  def index
    id = session[:user_id]
    @to_dos = ToDo.where(userId: id)
  end
  def new
    @to_do = ToDo.new
  end

  def create
    @to_do = ToDo.new(to_do_params)
    @to_do.userId = current_user.id
    @to_do.status = 0
    if @to_do.save
      redirect_to to_dos_path, notice:"ToDo created Successfully!!"
    else
      render :new
    end
  end

  private
  def to_do_params
    params.require(:to_do).permit(:name, :description)
  end
end
