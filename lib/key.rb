class Key

  def self.random_number_string
    "%05d" % rand(99999)
  end

end
