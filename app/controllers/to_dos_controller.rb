class ToDosController < ApplicationController
  before_action :set_to_do, only: [:show, :update, :destroy]

  # GET /to_dos
  def index
    if user_id = params['user_id'].presence
      @to_dos = User.find_by_id(user_id).try(:to_dos)
    else
      @to_dos = ToDo.all
    end
    render json: @to_dos
  end

  # GET /to_dos/1
  def show
    render json: @to_do
  end

  # POST /to_dos
  def create
    @to_do = ToDo.new(to_do_params)

    if @to_do.save
      render json: @to_do, status: :created, location: @to_do
    else
      render json: @to_do.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /to_dos/1
  def update
    if @to_do.update(to_do_params)
      render json: @to_do
    else
      render json: @to_do.errors, status: :unprocessable_entity
    end
  end

  # DELETE /to_dos/1
  def destroy
    @to_do.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_to_do
      @to_do = ToDo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def to_do_params
      params.require(:to_do).permit(:description, :user_id, :project_id, :completed, :completed_at, :assigned_by_id)
    end
end
