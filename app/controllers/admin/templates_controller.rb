class Admin::TemplatesController < ApplicationController
  before_action :set_admin_template, only: [:show, :edit, :update, :destroy]

  # GET /admin/templates
  # GET /admin/templates.json
  def index
    @admin_templates = Admin::Template.all
  end

  # GET /admin/templates/1
  # GET /admin/templates/1.json
  def show
  end

  # GET /admin/templates/new
  def new
    @admin_template = Admin::Template.new
  end

  # GET /admin/templates/1/edit
  def edit
  end

  # POST /admin/templates
  # POST /admin/templates.json
  def create
    @admin_template = Admin::Template.new(admin_template_params)

    respond_to do |format|
      if @admin_template.save
        format.html { redirect_to @admin_template, notice: 'Template was successfully created.' }
        format.json { render :show, status: :created, location: @admin_template }
      else
        format.html { render :new }
        format.json { render json: @admin_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/templates/1
  # PATCH/PUT /admin/templates/1.json
  def update
    respond_to do |format|
      if @admin_template.update(admin_template_params)
        format.html { redirect_to @admin_template, notice: 'Template was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_template }
      else
        format.html { render :edit }
        format.json { render json: @admin_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/templates/1
  # DELETE /admin/templates/1.json
  def destroy
    @admin_template.destroy
    respond_to do |format|
      format.html { redirect_to admin_templates_url, notice: 'Template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_template
      @admin_template = Admin::Template.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_template_params
      params.require(:admin_template).permit(:name, :description, :domain_id, :views, :status)
    end
end
