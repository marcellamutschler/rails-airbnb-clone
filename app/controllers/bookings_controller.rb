class BookingsController < ApplicationController
  def index
    @tasks = Manager.all
  end

  def show
  end

  def new
    @task = Manager.new
  end

  def create
    new_task = Manager.new(task_params)
    new_task.save
    redirect_to managers_path
  end

  def edit
    @task = Manager.find(params[:id])
  end

  def update
    @task.update(task_params)
    redirect_to manager_path(@task)
  end

  def destroy
    @task.destroy!
    redirect_to managers_path
  end

end
