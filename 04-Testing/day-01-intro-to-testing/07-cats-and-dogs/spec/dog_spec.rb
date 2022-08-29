# frozen_string_literal: true

require_relative '../lib/dog'
require_relative '../spec/shared_examples_spec'

# The file order to complete this lesson:

# 1. Familiarize yourself with the three lib/ files.
#    - lib/pet.rb is the parent 'Pet' class of 'Cat' and 'Dog'
#    - lib/cat.rb is a subclass 'Cat'
#    - lib/dog.rb is a subclass 'Dog'
# 2. Review the tests in spec/shared_example_spec.rb
# 3. Complete both spec/cat_spec.rb or spec/dog_spec.rb

describe Dog do
  subject(:toby) { described_class.new('Toby', nil, 'brown') }

  # Before you begin this file, make sure you have read the shared
  # example file: 11a_shared_examples_spec.rb. This test references
  # that file's first test in the below 'include_examples' line.
  context 'when Dog is a child class of Pet' do
    include_examples 'base class method name'
  end

  context 'when dog has name and color, but no breed' do
    # https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers/have-attributes-matcher
    it 'has name, breed & color attributes' do
      expect(toby).to have_attributes(name: 'Toby', breed: nil, color: 'brown')
    end
  end
end

# ASSIGNMENT - complete both Cat and Dog assignment
# (see cat_spec.rb for Cat assignment)

describe Dog do
  # Create a subject with your choice of dog name and optional breed/color.

  # Write a test using the second shared_example to test that dog responds to
  # talk ('WOOF!').
  context '' do
  end

  # remove the 'x' before running this test
  xit 'is not barking' do
  end

  # remove the 'x' before running this test
  xit 'is sleeping' do
  end
end
