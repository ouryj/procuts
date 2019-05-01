class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all.order("created_at ASC")
    @posts = Barber.all.order("created_at DESC")
  end

  def new
    @book = Appointment.new 
  end
  def create
    @book = Appointment.new(appointment_params)
    if @book.save
      redirect_to appointments_path
    else
      render 'new'
    end

  end

  def show
  end
  def destroy
    @des = Appointment.find(params[:id])
    @des.destroy
      redirect_to barbers_path
  end
  private
  def appointment_params
    params.require(:appointment).permit(:name,:date,:time,:phone)
  end
end
