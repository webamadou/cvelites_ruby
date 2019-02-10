class ResumesController < ApplicationController

  def index
    @resume = Admin::Resume.where(code: params['code']).includes(:user, :templates).first
    respond_to do |format|
      format.html
      format.pdf do
        @pdf = render_to_string :pdf => "#{@resume.name}.pdf", :template => 'resumes/index.html.erb', :encoding => "UTF-8"
        send_data(@pdf, :filename => "#{@resume.name}.pdf", :type=>"application/pdf")
      #format.pdf do render :pdf => "file.pdf", :template => 'resumes/index.html.erb'
      end
    end
  end

  def get_html
    ActionController::Base.new.render_to_string(template: 'resumes/index.html.erb',
                                                orientation: 'landscape',
                                                page_size: 'Letter',
                                                background: true
    )
  end
end