class TasksController < ApplicationController

    before_action :find_task, only:[:show, :edit, :update, :destroy ]



    def index
        @tasks = Task.all.order( "created_at DESC")

    end



    def show


    end



    def new
        @task  = Task.new


    end


    def edit

         @task = Task.find(find_task) 

    end


     
    def update

        if @task.update(task_params)
            redirect_to task_path(@task)

        else
            render 'edit'
        end

    end

    def destroy

        @item.destroy
        redirect_to root_path


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

    def find_task
         @task = Task.find(params[:id])
    end
end
