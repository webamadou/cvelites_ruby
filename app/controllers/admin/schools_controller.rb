class Admin::SchoolsController < ApplicationController
  before_action :set_admin_school, only: [:show, :edit, :update, :destroy]

  # GET /admin/schools
  # GET /admin/schools.json
  def index
    @admin_schools = Admin::School.all
    respond_to do |format|
      format.html
      format.json {render json: Admin::SchoolDatatable.new(params)}
    end
  end

  # GET /admin/schools/1
  # GET /admin/schools/1.json
  def show
  end

  # GET /admin/schools/new
  def new
    @admin_school = Admin::School.new
  end

  # GET /admin/schools/1/edit
  def edit
  end

  # POST /admin/schools
  # POST /admin/schools.json
  def create
    @admin_school = Admin::School.new(admin_school_params)

    respond_to do |format|
      if @admin_school.save
        format.html { redirect_to @admin_school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @admin_school }
      else
        format.html { render :new }
        format.json { render json: @admin_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/schools/1
  # PATCH/PUT /admin/schools/1.json
  def update
    respond_to do |format|
      if @admin_school.update(admin_school_params)
        format.html { redirect_to @admin_school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_school }
      else
        format.html { render :edit }
        format.json { render json: @admin_school.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/schools/1
  # DELETE /admin/schools/1.json
  def destroy
    @admin_school.destroy
    respond_to do |format|
      format.html { redirect_to admin_schools_url, notice: 'School was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_school
      @admin_school = Admin::School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_school_params
      params.require(:admin_school).permit(:name, :description, :legal_status, :address, :country_id)
    end
end
