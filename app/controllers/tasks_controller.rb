class TasksController < ApplicationController

  before_filter :find_task, :only => ['edit', 'update', 'destroy']

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])

    if @task.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def edit
  end

  def update
    if @task.update_attributes(params[:task])
      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end

  def destroy
  end

  protected

  def find_task
    @task = Task.find(params[:id])
  end

end
