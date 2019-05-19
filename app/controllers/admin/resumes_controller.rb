class Admin::ResumesController < ApplicationController
  before_action :set_admin_resume, only: [:show, :edit, :update, :destroy]

  # GET /admin/resumes
  # GET /admin/resumes.json
  def index
    @admin_resumes = Admin::Resume.all
  end

  # GET /admin/resumes/1
  # GET /admin/resumes/1.json
  def show
  end

  # GET /admin/resumes/new
  def new
    @admin_resume = Admin::Resume.new
  end

  # GET /admin/resumes/1/edit
  def edit
  end

  # POST /admin/resumes
  # POST /admin/resumes.json
  def create
    @admin_resume = Admin::Resume.new(admin_resume_params)

    respond_to do |format|
      if @admin_resume.save
        format.html { redirect_to @admin_resume, notice: 'Resume was successfully created.' }
        format.json { render :show, status: :created, location: @admin_resume }
      else
        format.html { render :new }
        format.json { render json: @admin_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/resumes/1
  # PATCH/PUT /admin/resumes/1.json
  def update
    respond_to do |format|
      if @admin_resume.update(admin_resume_params)
        format.html { redirect_to @admin_resume, notice: 'Resume was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_resume }
      else
        format.html { render :edit }
        format.json { render json: @admin_resume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/resumes/1
  # DELETE /admin/resumes/1.json
  def destroy
    @admin_resume.destroy
    respond_to do |format|
      format.html { redirect_to admin_resumes_url, notice: 'Resume was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_resume
      @admin_resume = Admin::Resume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_resume_params
      params.require(:admin_resume).permit(:name, :user_id, :description, :status)
    end
end
