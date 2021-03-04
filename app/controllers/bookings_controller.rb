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
    dates = params[:booking][:booked_start_date]
    start_date = calc_start_date(dates)
    end_date = calc_end_date(dates)

    @booking = Booking.create(booked_start_date: start_date, booked_end_date: end_date)
    @booking.experience = @experience
    @booking.user = current_user
    @booking.total_price = (end_date - start_date) * @experience.unit_current_price

    if @booking.save
      redirect_to confirmation_booking_path(@booking), notice: 'successfully created a booking'
    else
      render :new
    end
  end

  def confirmation
    @booking = Booking.find(params[:id])
  end

  private

  def calc_start_date(dates)
    match_obj = dates.match(/^(?<first>\d{4}-\d{2}-\d{2}).*(?<last>\d{4}-\d{2}-\d{2})$/)
    start_date = Date.parse(match_obj[:first])
    # dates is a string

  end

  def calc_end_date(dates)
    match_obj = dates.match(/^(?<first>\d{4}-\d{2}-\d{2}).*(?<last>\d{4}-\d{2}-\d{2})$/)
    last_date = Date.parse(match_obj[:last])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:booked_start_date, :booked_end_date)
  end
end

# (byebug) dates = params[:booking][:booked_start_date]
# "2021-03-07 to 2021-03-18"
# (byebug) dates.match(/^(?<first>\d{4}-\d{2}-\d{2}).*(?<last>\d{4}-\d{2}-\d{2})$/)
# #<MatchData "2021-03-07 to 2021-03-18" first:"2021-03-07" last:"2021-03-18">
# (byebug) match_obj = dates.match(/^(?<first>\d{4}-\d{2}-\d{2}).*(?<last>\d{4}-\d{2}-\d{2})$/)
# #<MatchData "2021-03-07 to 2021-03-18" first:"2021-03-07" last:"2021-03-18">
# (byebug) match_obj[:first]
# "2021-03-07"
# (byebug) Date.parse(match_obj[:first])
# Sun, 07 Mar 2021
# (byebug) start = Date.parse(match_obj[:first])
# Sun, 07 Mar 2021
# (byebug) end = Date.parse(match_obj[:last])
# *** SyntaxError Exception: (byebug):1: syntax error, unexpected end
# end = Date.parse(match_obj[:last...
# ^~~

# nil
# (byebug) last = Date.parse(match_obj[:last])
