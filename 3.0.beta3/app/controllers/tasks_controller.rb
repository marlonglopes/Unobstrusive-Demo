class TasksController < ApplicationController
  respond_to :html, :js

  def index
    @task = Task.new
    respond_with(@tasks = Task.all)
  end
  
  def show
    respond_with(@task = Task.find(params[:id]))
  end
  
  def new
    respond_with(@task = Task.new)
  end
  
  def create
    @task = Task.new(params[:task])
    flash[:notice] = "Successfully created task." if @task.save
    respond_with @task
  end
  
  def edit
    respond_with(@task = Task.find(params[:id]))
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      flash[:notice] = "Successfully updated task."
    end
    respond_with @task 
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "Successfully destroyed task."
    respond_with @task
  end
end
