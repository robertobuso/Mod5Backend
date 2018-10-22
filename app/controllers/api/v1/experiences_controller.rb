class Api::V1::ExperiencesController < ApplicationController
  before_action :find_experience, only: [:update, :delete]

  def index
    @experiences = Experience.all
    render json: @experiences
  end

  def update
    if @experience.update(experience_params)
      render json: @experience, status: :accepted
    else
      render json: { errors: @experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def delete
    @experience.destroy
  end

  def create
    @experience.new(experience_params)
    if @experience.save
      render json: @experience, status: :accepted
    else
      render json: { errors: @experience.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def experience_params
    params.permit(:status, :audio, :flower_one, :flower_two, :flower_three, :drag_book, :take_flower_one, :click_chest, :click_church)
  end

  def find_experience
    @experience = Experience.find(params[:id])
  end
end
