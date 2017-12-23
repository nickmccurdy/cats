require 'thor'

# The central module for Cats, a library/tool that does a small number of
# cat-related tasks
module Cats
  # The command line interface for Cats. Uses Thor to map each method to a
  # command.
  class CLI < Thor
    default_task :fact

    desc 'fact QUANTITY', 'Displays a given number of cat facts'
    argument :quantity, type: :numeric, default: 1
    # Acts as the UI for Cats.fact by showing each cat fact on a new line of
    # text
    def fact
      facts = Cats.fact quantity
      facts.each { |fact| puts fact }
    end
  end
end
