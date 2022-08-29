require "faraday"

class Request
  def initialize(url)
    @url = url
  end

  def call
    raise NotImplementedError
  end

  private

  def get
    Faraday.get(@url)
  end
end
