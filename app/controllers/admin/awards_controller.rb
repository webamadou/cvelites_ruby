class Admin::AwardsController < ApplicationController
  before_action :set_admin_award, only: [:show, :edit, :update, :destroy]

  # GET /admin/awards
  # GET /admin/awards.json
  def index
    @admin_awards = Admin::Award.all
  end

  # GET /admin/awards/1
  # GET /admin/awards/1.json
  def show
  end

  # GET /admin/awards/new
  def new
    @admin_award = Admin::Award.new
  end

  # GET /admin/awards/1/edit
  def edit
  end

  # POST /admin/awards
  # POST /admin/awards.json
  def create
    @admin_award = Admin::Award.new(admin_award_params)

    respond_to do |format|
      if @admin_award.save
        format.html { redirect_to @admin_award, notice: 'Award was successfully created.' }
        format.json { render :show, status: :created, location: @admin_award }
      else
        format.html { render :new }
        format.json { render json: @admin_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/awards/1
  # PATCH/PUT /admin/awards/1.json
  def update
    respond_to do |format|
      if @admin_award.update(admin_award_params)
        format.html { redirect_to @admin_award, notice: 'Award was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_award }
      else
        format.html { render :edit }
        format.json { render json: @admin_award.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/awards/1
  # DELETE /admin/awards/1.json
  def destroy
    @admin_award.destroy
    respond_to do |format|
      format.html { redirect_to admin_awards_url, notice: 'Award was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_award
      @admin_award = Admin::Award.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_award_params
      params.require(:admin_award).permit(:user_id, :title, :description, :date)
    end
end
