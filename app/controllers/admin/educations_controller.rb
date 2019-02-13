class Admin::EducationsController < ApplicationController
  before_action :set_admin_education, only: [:show, :edit, :update, :destroy]

  # GET /admin/educations
  # GET /admin/educations.json
  def index
    @admin_educations = Admin::Education.all
    respond_to do |format|
      format.html
      format.json {render json: Admin::EducationDatatable.new(params)}
    end
  end

  # GET /admin/educations/1
  # GET /admin/educations/1.json
  def show
  end

  # GET /admin/educations/new
  def new
    @admin_education = Admin::Education.new
  end

  # GET /admin/educations/1/edit
  def edit
  end

  # POST /admin/educations
  # POST /admin/educations.json
  def create
    @admin_education = Admin::Education.new(admin_education_params)

    respond_to do |format|
      if @admin_education.save
        format.html { redirect_to @admin_education, notice: 'Education was successfully created.' }
        format.json { render :show, status: :created, location: @admin_education }
      else
        format.html { render :new }
        format.json { render json: @admin_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/educations/1
  # PATCH/PUT /admin/educations/1.json
  def update
    respond_to do |format|
      if @admin_education.update(admin_education_params)
        format.html { redirect_to @admin_education, notice: 'Education was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_education }
      else
        format.html { render :edit }
        format.json { render json: @admin_education.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/educations/1
  # DELETE /admin/educations/1.json
  def destroy
    @admin_education.destroy
    respond_to do |format|
      format.html { redirect_to admin_educations_url, notice: 'Education was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_education
      @admin_education = Admin::Education.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_education_params
      params.require(:admin_education).permit(:school_id, :degree, :graduation_year, :description, :address)
    end
end
