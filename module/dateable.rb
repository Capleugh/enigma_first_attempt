module Dateable
  def generate
    date = Time.new
    date.strftime('%d%m%y')
    require 'pry'; binding.pry
  end
end
