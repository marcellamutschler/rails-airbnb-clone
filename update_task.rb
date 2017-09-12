class TasksController < ApplicationController
before_action :set_task

  def task
    @task.update(params_task)
    redirect_to root_path
    # i want to update ony these 2 ones
  end

  private

  def set_task
    @task = Task.find(params[:id])
    #what to update - find the tasks
    # ask for ID 4, returns the whole thing
  end

  def params_task
    params.require(:task).permit(:name,:description)
    #returns a hash with these 2 params, do to let you uptdate it
    # => {name: 'whatever' , description: 'my description'}
    # just update these form my obejct
  end

---------
# this is what it's doing

  def task
    id = params[:id]
    # le params envoit dans sa hash un objet avec un ID - chope cet ID
    @task = Task.find(id)
    # chope dans la database via find l'objetc avec l'ID 4 par ex,
    # store cette objet qui existe dans une variable @task,
    # alors que new va recréer un ID
    @task.update(name: params[:task][:name], description: params[:task][:description])
    # grave à la fonction AR updtate, change les values de la DB de name et descriptions
    # avec ce qui vient d'être envoyé dans le hash de la param.
    #youpiiiiiii
    redirect_to root_path
    # i want to update ony these 2 ones
    # incomung info (url _ form)
  end
end
