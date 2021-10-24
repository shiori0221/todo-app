class TasksController < ApplicationController
  before_action :set_task, only: [:edit, :update]

  def index
    @tasks = Task.all
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

  private
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:text, :memo, :limit, :list_id)
  end

end
