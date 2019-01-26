class Admin::CountriesController < ApplicationController
  before_action :set_admin_country, only: [:show, :edit, :update, :destroy]

  # GET /admin/countries
  # GET /admin/countries.json
  def index
    @admin_countries = Admin::Country.all
  end

  # GET /admin/countries/1
  # GET /admin/countries/1.json
  def show
  end

  # GET /admin/countries/new
  def new
    @admin_country = Admin::Country.new
  end

  # GET /admin/countries/1/edit
  def edit
  end

  # POST /admin/countries
  # POST /admin/countries.json
  def create
    @admin_country = Admin::Country.new(admin_country_params)

    respond_to do |format|
      if @admin_country.save
        format.html { redirect_to @admin_country, notice: 'Country was successfully created.' }
        format.json { render :show, status: :created, location: @admin_country }
      else
        format.html { render :new }
        format.json { render json: @admin_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/countries/1
  # PATCH/PUT /admin/countries/1.json
  def update
    respond_to do |format|
      if @admin_country.update(admin_country_params)
        format.html { redirect_to @admin_country, notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_country }
      else
        format.html { render :edit }
        format.json { render json: @admin_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/countries/1
  # DELETE /admin/countries/1.json
  def destroy
    @admin_country.destroy
    respond_to do |format|
      format.html { redirect_to admin_countries_url, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_country
      @admin_country = Admin::Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_country_params
      params.require(:admin_country).permit(:iso, :name, :nicename, :iso3, :numcode, :phonecode, :status)
    end
end
