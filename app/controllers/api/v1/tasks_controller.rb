class Api::V1::TasksController < ApplicationController
  before_action :find_task, only: [:update]

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def update
    @task.update(task_params)
    if @task.save
      render json: @task, status: :accepted
    else
      render json: { errors: @task.errors.full_messages }, status: :unprocessable_entity
    end
  end

<<<<<<< HEAD
=======
  def create
    @task = Task.new(task_params)
    if @task.save
      render json: @task, status: :accepted
    else
      render json: { errors: @task.errors.full_messages }, status: :unprocessable_entity
    end
  end

>>>>>>> 4a3f0c1af597bb79ef844f39ed7036dedfa4c43d
  private

  def task_params
    params.permit(:category, :completed, :experience_id)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
<<<<<<< HEAD
=======
end
>>>>>>> 4a3f0c1af597bb79ef844f39ed7036dedfa4c43d
