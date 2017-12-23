require 'cats/cli'
require 'cats/version'

# The central module for Cats, a library/tool that does a small number of
# cat-related tasks
module Cats
  module_function

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
