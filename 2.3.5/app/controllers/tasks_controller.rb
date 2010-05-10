class TasksController < ApplicationController
  def index
    @task = Task.new
    @tasks = Task.all(:order => "due_date desc")
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(params[:task])
    if @task.save
      flash[:notice] = "Successfully created task."
      respond_to do |format|
        format.html { redirect_to @task }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :action => 'new' }
        format.js
      end
    end
  end
  
  def edit
    @task = Task.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
      flash[:notice] = "Successfully updated task."
      respond_to do |format|
        format.html { redirect_to @task }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :action => 'edit' }
        format.js
      end
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    flash[:notice] = "Successfully destroyed task."
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end
end
