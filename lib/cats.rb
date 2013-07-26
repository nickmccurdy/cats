require 'json'
require 'open-uri'

module Cats

  extend self

  VERSION = '0.0.1'

  def fact(quantity = 1)
    # number: Number of cat facts to retrieve (0-100).
    url = "http://catfacts-api.appspot.com/api/facts?number=#{quantity}"
    content = open(url).read
    JSON.parse(content)['facts']
  end

end
