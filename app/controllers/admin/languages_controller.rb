class Admin::LanguagesController < ApplicationController
  before_action :set_admin_language, only: [:show, :edit, :update, :destroy]

  # GET /admin/languages
  # GET /admin/languages.json
  def index
    @admin_languages = Admin::Language.all
  end

  # GET /admin/languages/1
  # GET /admin/languages/1.json
  def show
  end

  # GET /admin/languages/new
  def new
    @admin_language = Admin::Language.new
  end

  # GET /admin/languages/1/edit
  def edit
  end

  # POST /admin/languages
  # POST /admin/languages.json
  def create
    @admin_language = Admin::Language.new(admin_language_params)

    respond_to do |format|
      if @admin_language.save
        format.html { redirect_to @admin_language, notice: 'Language was successfully created.' }
        format.json { render :show, status: :created, location: @admin_language }
      else
        format.html { render :new }
        format.json { render json: @admin_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/languages/1
  # PATCH/PUT /admin/languages/1.json
  def update
    respond_to do |format|
      if @admin_language.update(admin_language_params)
        format.html { redirect_to @admin_language, notice: 'Language was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_language }
      else
        format.html { render :edit }
        format.json { render json: @admin_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/languages/1
  # DELETE /admin/languages/1.json
  def destroy
    @admin_language.destroy
    respond_to do |format|
      format.html { redirect_to admin_languages_url, notice: 'Language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_language
      @admin_language = Admin::Language.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_language_params
      params.require(:admin_language).permit(:name, :code, :status)
    end
end
