class TasksController < ApplicationController
  before_action :all_tasks, only: [:index, :create, :update, :destroy]
  before_action :set_tasks, only:[:edit,:update, :destroy, :show]
  respond_to :html, :js
  layout 'bootstrap'
  
  def new
    @task = Task.new
  end

  def create
    @task  = Task.create(task_params)
    respond_to do |format|    
      format.html { redirect_to tasks_url }
      format.js
    end 
  end
  
  def update
    @task.update_attributes(task_params)
  end
  
  def destroy
    @task.destroy
  end
  
  def show
  end

  private

  def all_tasks
    @tasks = Task.all
  end

  def set_tasks
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:description, :deadline)
  end
end
