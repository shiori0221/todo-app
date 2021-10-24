class TasksController < ApplicationController
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

  private
  def task_params
    params.require(:task).permit(:text, :memo, :limit, :list_id)
  end

end
