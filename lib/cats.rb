require 'thor'

module Cats

  extend self

  VERSION = '0.0.1'

  @facts = File.open("#{File.dirname __FILE__}/facts.txt").read.split(/\n/)

  def fact(quantity = 1)
    # TODO Consider allowing more than 202 cat facts (show duplicates?)
    @facts.sample quantity
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
