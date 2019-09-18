module Dateable
  def generate
    date = Time.new
    date.strftime('%d%m%y')
  end
end
