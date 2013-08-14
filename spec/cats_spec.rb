require 'spec_helper'

describe Cats do
  it 'has a version number' do
    ::Cats::VERSION.wont_be_nil
  end

  it 'generates cat facts' do
    Cats.fact(0).must_equal []

    Cats.fact.length.must_equal 1
    Cats.fact(1).length.must_equal 1
    Cats.fact(10).length.must_equal 10

    #Cats.fact(1000).length.must_equal 1000
    Cats.fact 1000
    
    Cats.fact(10).each { |fact| fact.must_be_instance_of String }
    
    proc { Cats.fact(-1) }.must_raise ArgumentError
  end
end
