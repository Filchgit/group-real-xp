class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

    redirect_to experience_path(@experience)
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update_attributes(params[:booking])
  # end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.create(booking_params)
    @booking.experience = @experience

    if @booking.save
      redirect_to experience_path(@experience), notice: 'successfully created a booking'
    else
      render :new
    end
  end

  private 

  def booking_params
    params.require(:booking).permit(:experience_id, :user_id, :status, :payment_status, :total_price, :book_start_date, :book_end_date)
  end
end
