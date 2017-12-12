class TeacherAssigmentsController < ApplicationController
  before_action :set_teacher_assigment, only: [:show, :edit, :update, :destroy]

  # GET /teacher_assigments
  # GET /teacher_assigments.json
  def index
    @teacher_assigments = TeacherAssigment.all
  end

  # GET /teacher_assigments/1
  # GET /teacher_assigments/1.json
  def show
  end

  # GET /teacher_assigments/new
  def new
    @teacher_assigment = TeacherAssigment.new
  end

  # GET /teacher_assigments/1/edit
  def edit
  end

  # POST /teacher_assigments
  # POST /teacher_assigments.json
  def create
    @teacher_assigment = TeacherAssigment.new(teacher_assigment_params)

    respond_to do |format|
      if @teacher_assigment.save
        format.html { redirect_to @teacher_assigment, notice: 'Teacher assigment was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_assigment }
      else
        format.html { render :new }
        format.json { render json: @teacher_assigment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_assigments/1
  # PATCH/PUT /teacher_assigments/1.json
  def update
    respond_to do |format|
      if @teacher_assigment.update(teacher_assigment_params)
        format.html { redirect_to @teacher_assigment, notice: 'Teacher assigment was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_assigment }
      else
        format.html { render :edit }
        format.json { render json: @teacher_assigment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_assigments/1
  # DELETE /teacher_assigments/1.json
  def destroy
    @teacher_assigment.destroy
    respond_to do |format|
      format.html { redirect_to teacher_assigments_url, notice: 'Teacher assigment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_assigment
      @teacher_assigment = TeacherAssigment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_assigment_params
      params.require(:teacher_assigment).permit(:teacher_id, :course_id)
    end
end
