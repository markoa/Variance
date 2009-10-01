class TasksController < ApplicationController

  def list
    @tasks = Task.find(:all)
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(params[:task])
    if @task.save
      redirect_to :action => :list
    else
      render :action => :new
    end
  end

  def edit
  end

  def destroy
  end
end

