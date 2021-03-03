class ExperiencesController < ApplicationController

  before_action :set_experience, only: %i[ edit, update, show ]

  def index
    @experiences = Experience.all
  end

  def show
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

    redirect_to experiences_path
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
    params.require(:experience).permit(:title, :description, :unit_current_price, photos: [])
  end

end
