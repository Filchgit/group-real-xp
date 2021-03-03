class DashboardsController < ApplicationController

def show
  @experiences = current_user.experiences

  # @booked_experiences = Bookings.find(params[@bookings.experience_id])
  @bookings = current_user.bookings

end

end
