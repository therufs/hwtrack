class ClassAssignmentsController < ApplicationController
  before_action :set_class_assignment, only: [:show, :edit, :update, :destroy]

  # GET /class_assignments
  # GET /class_assignments.json
  def index
    @class_assignments = ClassAssignment.all
  end

  # GET /class_assignments/1
  # GET /class_assignments/1.json
  def show
  end

  # GET /class_assignments/new
  def new
    @class_assignment = ClassAssignment.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /class_assignments/1/edit
  def edit
  end

  # POST /class_assignments
  # POST /class_assignments.json
  def create
    @users = User.all
    @class_assignment = ClassAssignment.new(class_assignment_params)

    respond_to do |format|
      if @class_assignment.save
        # Make an assignment for each user
        User.all.each do |u|
          assignment = @class_assignment.assignments.build(
            complete: false, link: "", user_id: u.id)
          assignment.save
        end
        format.html { redirect_to @class_assignment, notice: 'Class assignment was successfully created.' }
        format.js do
          @class_assignments = ClassAssignment.all
        end
        # format.json { render :show, status: :created, location: @class_assignment }
      else
        format.html { render :new }
        format.json { render json: @class_assignment.errors, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  # PATCH/PUT /class_assignments/1
  # PATCH/PUT /class_assignments/1.json
  def update
    respond_to do |format|
      if @class_assignment.update(class_assignment_params)
        format.html { redirect_to @class_assignment, notice: 'Class assignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_assignment }
      else
        format.html { render :edit }
        format.json { render json: @class_assignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_assignments/1
  # DELETE /class_assignments/1.json
  def destroy
    @class_assignment.destroy
    respond_to do |format|
      format.html { redirect_to class_assignments_url, notice: 'Class assignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_assignment
      @class_assignment = ClassAssignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_assignment_params
      params.require(:class_assignment).permit(:title, :description, :assigned, :due)
    end
end
