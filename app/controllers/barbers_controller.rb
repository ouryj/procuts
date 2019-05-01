class BarbersController < ApplicationController
  before_action :authenticate_user! 
 
  def index
    @appointments = Appointment.all.order("created_at ASC")
    @posts = Barber.all.order("created_at DESC")
  end

  def new
    @post = Barber.new
  end
  def create
    @post = Barber.new(barber_params)
    if @post.save
      redirect_to barbers_path
    else
      render 'new'
    end
  end

  def show
  end
  def destroy
      @post = Barber.find(params[:id])
      @post.destroy
    redirect_to barbers_path
  
  end
  private
  def barber_params
    params.require(:barber).permit(:post).merge(user_id: current_user.id)
  end
 
end
