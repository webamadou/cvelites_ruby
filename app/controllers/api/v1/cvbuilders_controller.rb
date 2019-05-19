class Api::V1::CvbuildersController < ApplicationController
  respond_to :json

  def index
    puts '============================='
    puts(Admin::Resume.all.count.inspect)
    puts '============================='
    respond_with Admin::Resume.all
=begin

    respond_to do |format|
      format.json { render json: Admin::Resume.order(name: :DESC) }
    end

=end
  end

  def show
    respond_with Admin::Resume.find(params[:id])
  end

  def create
    respond_with :api, Admin::Resume.create(event_params)
  end

  def destroy
    respond_with Admin::Resume.destroy(params[:id])
  end

  def update
    event = Admin::Resume.find(params['id'])
    event.update(event_params)
    respond_with Admin::Resume, json: event
  end

  private

  def event_params
    params.require(:event).permit(
        :id,
        :event_type,
        :event_date,
        :title,
        :speaker,
        :host,
        :published
    )
  end
end