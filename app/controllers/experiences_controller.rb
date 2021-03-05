class ExperiencesController < ApplicationController

  before_action :set_experience, only: %i[ edit, update, show ]

  def index
    if params[:query].present?
      sql_query = "title ILIKE :query OR description ILIKE :query"
      @experiences = Experience.where(sql_query, query: "%#{params[:query]}%")
    else
      @experiences = Experience.all
    end
    
    # the `geocoded` scope filters only experiences with coordinates (latitude & longitude)
    @markers = @experiences.geocoded.map do |experience|
      {
        lat: experience.latitude,
        lng: experience.longitude,
        # the infor window is so we can pass more info about experiences to our view
        # it links to a partial containing the content of our info window
        infoWindow: render_to_string(partial: "info_window", locals: { experience: experience })
      }
    end
  end

  def show
    @experiences = Experience.all
    @markers =
      [{
          lat: @experience.latitude,
          lng: @experience.longitude,

          infoWindow: render_to_string(partial: "info_window", locals: { experience: @experience })
       }]
  end

  def new
    @experience = Experience.new
    @user = current_user
  end

  def create
    @experience = Experience.new(experience_params)
    @experience.user_id = current_user.id
        if @experience.save

       redirect_to @experience
    else
       render :new
    end
  end

  def edit
    @experience = Experience.find(params[:id])
    @experience.user_id = current_user.id

  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy

    redirect_to dashboard_path
  end

  def update
    @experience = Experience.find(params[:id])

    @experience.user_id = current_user.id
    if @experience.update(experience_params)
      redirect_to @experience
   else
     render :edit
   end
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def experience_params
    params.require(:experience).permit(:title, :description, :unit_current_price, :location, :description_second, photos: [])
  end

end
