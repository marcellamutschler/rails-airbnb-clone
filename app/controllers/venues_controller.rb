class VenuesController < ApplicationController

  def index
    @venue = Venue.all
  end

  def show
  end

  def new
    @venue = Venue.new
  end

  def create
    new_task = Venue.new(task_params)
    new_task.save
    redirect_to managers_path
  end

  def edit
    @venue = Venue.find(params[:id])
  end

  def update
    @venue.update(task_params)
    redirect_to manager_path(@venue)
  end

  def destroy
    @venue.destroy!
    redirect_to managers_path
  end

end
