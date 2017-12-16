class Admin::StudentAssigmentsController < ApplicationController
  before_action :set_student_assigment, only: [:show, :edit, :update, :destroy]

  # GET /student_assigments
  # GET /student_assigments.json
  def index
    @student_assigments = StudentAssigment.all
  end

  # GET /student_assigments/1
  # GET /student_assigments/1.json
  def show
  end

  # GET /student_assigments/new
  def new
    @student_assigment = StudentAssigment.new
  end

  # GET /student_assigments/1/edit
  def edit
  end

  # POST /student_assigments
  # POST /student_assigments.json
  def create
    @student_assigment = StudentAssigment.new(student_assigment_params)

    respond_to do |format|
      if @student_assigment.save
        format.html { redirect_to [:admin, @student_assigment], notice: 'Student assigment was successfully created.' }
        format.json { render :show, status: :created, location: @student_assigment }
      else
        format.html { render :new }
        format.json { render json: @student_assigment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_assigments/1
  # PATCH/PUT /student_assigments/1.json
  def update
    respond_to do |format|
      if @student_assigment.update(student_assigment_params)
        format.html { redirect_to [:admin, @student_assigment], notice: 'Student assigment was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_assigment }
      else
        format.html { render :edit }
        format.json { render json: @student_assigment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_assigments/1
  # DELETE /student_assigments/1.json
  def destroy
    @student_assigment.destroy
    respond_to do |format|
      format.html { redirect_to admin_student_assigments_url, notice: 'Student assigment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_assigment
      @student_assigment = StudentAssigment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_assigment_params
      params.require(:student_assigment).permit(:course_id, :student_id)
    end
end
