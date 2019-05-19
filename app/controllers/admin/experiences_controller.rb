class Admin::ExperiencesController < ApplicationController
  before_action :set_admin_experience, only: [:show, :edit, :update, :destroy]

  # GET /admin/experiences
  # GET /admin/experiences.json
  def index
    @admin_experiences = Admin::Experience.all
    respond_to do |format|
      format.html
      format.json {render json: Admin::ExperienceDatatable.new(params)}
    end
  end

  # GET /admin/experiences/1
  # GET /admin/experiences/1.json
  def show
  end

  # GET /admin/experiences/new
  def new
    @admin_experience = Admin::Experience.new
  end

  # GET /admin/experiences/1/edit
  def edit
  end

  # POST /admin/experiences
  # POST /admin/experiences.json
  def create
    @admin_experience = Admin::Experience.new(admin_experience_params)

    respond_to do |format|
      if @admin_experience.save
        format.html { redirect_to @admin_experience, notice: 'Experience was successfully created.' }
        format.json { render :show, status: :created, location: @admin_experience }
      else
        format.html { render :new }
        format.json { render json: @admin_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/experiences/1
  # PATCH/PUT /admin/experiences/1.json
  def update
    respond_to do |format|
      if @admin_experience.update(admin_experience_params)
        format.html { redirect_to @admin_experience, notice: 'Experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_experience }
      else
        format.html { render :edit }
        format.json { render json: @admin_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/experiences/1
  # DELETE /admin/experiences/1.json
  def destroy
    @admin_experience.destroy
    respond_to do |format|
      format.html { redirect_to admin_experiences_url, notice: 'Experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_experience
      @admin_experience = Admin::Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_experience_params
      params.require(:admin_experience).permit(:title, :company_id, :user_id, :description, :started_at, :ended_at, :still_there, :status)
    end
end
