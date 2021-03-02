class ExperiencesController < ApplicationController
  before_action :set_experience, only: [:show]
  def index
    @experiences = Experience.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def destroy
  end

  def update
  end

  private

  def set_experience
    @experience = Experience.find(params[:id])
  end

end
