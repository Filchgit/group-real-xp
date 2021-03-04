class BookingsController < ApplicationController

  before_action :set_booking, only: %i[edit, update, show]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @user = current_user
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to dashboard_path
  end

   def edit
     @user = current_user
     @booking = Booking.find(params[:id])
   end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update_attributes(params[:booking])
  # end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.create(booking_params)
    @booking.experience = @experience
    @booking.user_id = current_user.id

    if @booking.save
      redirect_to experience_path(@experience), notice: 'successfully created a booking'
    else
      render :new
    end
  end

  private
  
  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:experience_id, :user_id, :status, :payment_status, :total_price, :booked_start_date, :booked_end_date)
  end
end
