class PagesController < ApplicationController

  def home
  end

  # def dashboard
  # # You can set the variable in the if-clause
  # # And you also need to use static finders with a hash as an argument in Rails4
  # if (@user = User.find_by(params[:id]))
  #    @experiences = @user.experiences.all
  #    # @experience.user_id = current_user.id
  #    # @logs = @user.logs.all
  # # You don't need to call render explicitly
  # # if you render the view with the same name as the action
  #  else
  #    render file: 'public/404', status: 404, formats: [html]
  #  end

end
