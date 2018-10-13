class Api::V1::ExperiencesController < ApplicationController
  before_action :find_experience, only: [:update]

  def index
    byebug
    @experiences = Experience.all
    render json: @experiences
  end

  def create
  @experience = Experience.new(experience_params)
  if @experience.save
      render json: @experience, status: :accepted
    else
      render json: { errors: @experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    @experience.update(experience_params)
    if @experience.save
      render json: @experience, status: :accepted
    else
      render json: { errors: @experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def experience_params
    params.permit(:current, :audio)
  end

  def find_experience
    @experience = Experience.find(params[:id])
  end
end
