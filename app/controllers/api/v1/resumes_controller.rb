class Api::V1::ResumesController < ApplicationController
  respond_to :json
  def index
    #Admin::Resume.all
    respond_with Admin::Resume.all
  end
end
