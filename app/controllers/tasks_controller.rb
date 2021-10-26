class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update, :destroy]
  before_action :move_to_index, except: [:index]

  def index
    @tasks = Task.includes(:user)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.list_id = "1"
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    redirect_to root_path
  end

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:text, :memo, :limit, :list_id).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end

end
