class ResumesController < ApplicationController

  def index
    @resume = Admin::Resume.where(code: params['code']).includes(:user, :templates).first

  end
end