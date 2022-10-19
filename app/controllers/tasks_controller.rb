class TasksController < ApplicationController
    def index
    end

    def new
        @task  = Task.new

    end

    def create
        @task= Task.new(task_params)
        if @task.save
            redirect_to root_path

        else render 'new'
        end

    end

    private
    def task_params 
        params.require(:task).permit(:title, :description, :status)
    end
end
