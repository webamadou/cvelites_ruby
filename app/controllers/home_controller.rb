class HomeController < ApplicationController

  #split_code will split a string returning strings and numbers in two different vars
  def split_code(string)
    chars = numbers = ''
    code = string.split('')
    if code.length > 0
      code.each do |char|
        if char =~ /\A[-+]?[0-9]+\z/
          numbers += char
        else
          chars += char
        end
      end
    end
    [chars, numbers]
  end

  def index
    render layout: 'layouts/front-end'
  end

  def home
    #@user = Admin::User.order("RAND()").includes(:resumes).first
    @user = Admin::User.find(1)
    session[:user_id] = @user.id
    render layout: 'layouts/front-end'
  end

end
