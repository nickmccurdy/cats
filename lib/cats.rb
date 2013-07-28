require 'thor'

# The central module for Cats, a library/tool that does a small number of
# cat-related tasks
module Cats

  extend self

  # The version of the Cats gem
  VERSION = '0.1.0'

  # An Array of cat facts. Each string contains one fact. The facts are read
  # from a simple text file, with one fact on each line.
  @facts = File.open("#{File.dirname __FILE__}/facts.txt").read.split(/\n/)

  # Returns a given number of cat facts, which defaults to 1
  #
  # TODO: Consider allowing more than 202 cat facts (show duplicates?)
  #
  # @param [Fixnum] quantity the number of cat facts to receive (0-many)
  #
  # @return [Array] an Array of Strings of cat facts
  def fact(quantity = 1)
    @facts.sample quantity
  end

end

# The command line interface for Cats. Uses Thor to map each method to a
# command.
class Cats::CLI < Thor

  default_task :fact

  desc 'fact QUANTITY', 'Displays a given number of cat facts'
  argument :quantity, type: :numeric, default: 1
  # Acts as the UI for Cats.fact by showing each cat fact on a new line of text
  def fact
    facts = Cats.fact quantity
    facts.each { |fact| puts fact }
  end

end
