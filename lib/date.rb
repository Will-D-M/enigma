require 'date'

class Date

  def self.current_date
    Time.now.strftime("%d%m%y")
  end

end
