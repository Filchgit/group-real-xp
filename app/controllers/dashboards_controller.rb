class DashboardsController < ApplicationController

def show
  @experiences = current_user.experiences
  @bookings = current_user.bookings
end

end
