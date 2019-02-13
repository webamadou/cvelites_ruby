class Admin::HobbiesController < ApplicationController
  before_action :set_admin_hobby, only: [:show, :edit, :update, :destroy]

  # GET /admin/hobbies
  # GET /admin/hobbies.json
  def index
    @admin_hobbies = Admin::Hobby.all
    respond_to do |format|
      format.html
      format.json {render json: Admin::HobbyDatatable.new(params)}
    end
  end

  # GET /admin/hobbies/1
  # GET /admin/hobbies/1.json
  def show
  end

  # GET /admin/hobbies/new
  def new
    @admin_hobby = Admin::Hobby.new
  end

  # GET /admin/hobbies/1/edit
  def edit
  end

  # POST /admin/hobbies
  # POST /admin/hobbies.json
  def create
    @admin_hobby = Admin::Hobby.new(admin_hobby_params)

    respond_to do |format|
      if @admin_hobby.save
        format.html { redirect_to @admin_hobby, notice: 'Hobby was successfully created.' }
        format.json { render :show, status: :created, location: @admin_hobby }
      else
        format.html { render :new }
        format.json { render json: @admin_hobby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/hobbies/1
  # PATCH/PUT /admin/hobbies/1.json
  def update
    respond_to do |format|
      if @admin_hobby.update(admin_hobby_params)
        format.html { redirect_to @admin_hobby, notice: 'Hobby was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_hobby }
      else
        format.html { render :edit }
        format.json { render json: @admin_hobby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/hobbies/1
  # DELETE /admin/hobbies/1.json
  def destroy
    @admin_hobby.destroy
    respond_to do |format|
      format.html { redirect_to admin_hobbies_url, notice: 'Hobby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_hobby
      @admin_hobby = Admin::Hobby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_hobby_params
      params.require(:admin_hobby).permit(:name, :icon, :status, :user_id)
    end
end
