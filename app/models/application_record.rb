class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

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

end
