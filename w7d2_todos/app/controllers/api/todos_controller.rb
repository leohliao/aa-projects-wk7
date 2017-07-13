class Api::TodosController < Api::ApplicationController

  def show
    render json: Todo.find_by_id(:id)
  end

  def index
    render json: Todo.all
  end

  def create
    @todo = current_user.todos.new(todo_params)

    if @todo.save
      render json: @todo
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end

  def update
    @todo = Todo.find_by_id(:id)

    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors.full_messages, status: 422
    end
  end

  def destroy
    @todo = current_user.todos.find_by_id(:id)
    @todo.destroy
    render json: @todo
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :body, :done)
  end

end
