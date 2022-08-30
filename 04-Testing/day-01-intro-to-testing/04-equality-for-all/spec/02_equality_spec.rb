# frozen_string_literal: true

# 'eq' checks for equal VALUE.
# 'eql' checks for equal VALUE and TYPE.
# 'equal' checks for OBJECT IDENTITY.
# 'be' checks for OBJECT IDENTITY.

RSpec.describe 'equality assignment' do
  let(:amy) { { fav_color: 'blue', fav_food: 'tacos' } }
  let(:bob) { { fav_color: 'blue', fav_food: 'tacos' } }
  let(:copy_cat) { amy }
  # Write a test that expresses each of the following statements.

  # remove the 'x' before running this test
  xit 'amy is eq to bob' do
  end

  # remove the 'x' before running this test
  xit 'amy is eql to bob' do
  end

  # remove the 'x' before running this test
  xit 'amy is not equal to bob' do
  end

  # remove the 'x' before running this test
  xit 'copy_cat is equal to amy' do
  end
end
