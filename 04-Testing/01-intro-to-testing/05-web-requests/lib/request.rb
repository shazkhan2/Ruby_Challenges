require "faraday"

class Request
  def initialize(url)
    @url = url
  end

  def get
    Faraday.get(@url)
  end
end
