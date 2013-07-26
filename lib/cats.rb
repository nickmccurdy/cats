require 'json'
require 'open-uri'
require 'thor'

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

class Cats::CLI < Thor

  default_task :fact

  desc 'fact QUANTITY', 'Displays a given number of cat facts'
  argument :quantity, type: :numeric, default: 1
  def fact
    facts = Cats.fact quantity
    facts.each { |fact| puts fact }
  end

end
