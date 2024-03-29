class AssignmentsController < ApplicationController
  before_action :signed_in_user
  before_action :correct_user
  before_action :set_assignment, only: [:show, :edit, :update]

  # GET /assignments
  # GET /assignments.json
  def index
    @assignments = Assignment.all
    @class_assignments = ClassAssignment.all
  end

  # GET /assignments/1
  # GET /assignments/1.json
  def show
  end

  # GET /assignments/1/edit
  def edit
  end

  # PATCH/PUT /assignments/1
  # PATCH/PUT /assignments/1.json
  def update
    respond_to do |format|
      if @assignment.update(assignment_params)
        format.html { redirect_to user_path(id: current_user.id), notice: 'Assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment }
      else
        format.html { render :edit }
        format.json { render json: @assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:complete, :link)
    end

    def correct_user
      resource = Assignment.find_by(id: params[:id])
      unless current_user.id == resource.user_id || current_user.admin
        redirect_to user_path(id: current_user.id), notice: "That action is only available to its user."
      end
    end
end
