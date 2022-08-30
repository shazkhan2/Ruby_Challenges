## Intro
Start with reading about the use of shared examples:
https://relishapp.com/rspec/rspec-core/docs/example-groups/shared-examples

## The file order to complete this lesson:
1. Familiarize yourself with the three lib/ files.
   - lib/pet.rb is the parent 'Pet' class of 'Cat' and 'Dog'
   - lib/cat.rb is a subclass 'Cat'
   - lib/dog.rb is a subclass 'Dog'

2. Review the tests in spec/shared_examples_spec.rb

3. Complete both spec/cat_spec.rb and spec/dog_spec.rb

## Dog Spec
```ruby
RSpec.describe Dog do
  subject(:toby) { described_class.new('Toby', nil, 'brown') }

  # Before you begin this file, make sure you have read the shared
  # example file: shared_examples_spec.rb. This test references
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
```

## Cat Spec
```ruby
RSpec.describe Cat do
  subject(:oscar) { described_class.new('Oscar', 'Maine Coon') }

  # Before you begin this file, make sure you have read the shared
  # example file: shared_examples_spec.rb. This test references
  # that file's first test in the below 'include_examples' line.
  context 'when Cat is a child class of Pet' do
    include_examples 'base class method name'
  end

  context 'when cat has name and breed, but no color' do
    # https://relishapp.com/rspec/rspec-expectations/v/3-9/docs/built-in-matchers/have-attributes-matcher
    it 'has name, breed & color attributes' do
      expect(oscar).to have_attributes(name: 'Oscar', breed: 'Maine Coon', color: nil)
    end
  end
end
```
