class Admin::DomainsController < ApplicationController
  before_action :set_admin_domain, only: [:show, :edit, :update, :destroy]

  # GET /admin/domains
  # GET /admin/domains.json
  def index
    @admin_domains = Admin::Domain.all
    respond_to do |format|
      format.html
      format.json {render json: Admin::DomainDatatable.new(params)}
    end
  end

  # GET /admin/domains/1
  # GET /admin/domains/1.json
  def show
  end

  # GET /admin/domains/new
  def new
    @admin_domain = Admin::Domain.new
  end

  # GET /admin/domains/1/edit
  def edit
  end

  # POST /admin/domains
  # POST /admin/domains.json
  def create
    @admin_domain = Admin::Domain.new(admin_domain_params)

    respond_to do |format|
      if @admin_domain.save
        format.html { redirect_to @admin_domain, notice: 'Domain was successfully created.' }
        format.json { render :show, status: :created, location: @admin_domain }
      else
        format.html { render :new }
        format.json { render json: @admin_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/domains/1
  # PATCH/PUT /admin/domains/1.json
  def update
    respond_to do |format|
      if @admin_domain.update(admin_domain_params)
        format.html { redirect_to @admin_domain, notice: 'Domain was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_domain }
      else
        format.html { render :edit }
        format.json { render json: @admin_domain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/domains/1
  # DELETE /admin/domains/1.json
  def destroy
    @admin_domain.destroy
    respond_to do |format|
      format.html { redirect_to admin_domains_url, notice: 'Domain was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_domain
      @admin_domain = Admin::Domain.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_domain_params
      params.require(:admin_domain).permit(:name, :description, :parent_id, :status)
    end
end
