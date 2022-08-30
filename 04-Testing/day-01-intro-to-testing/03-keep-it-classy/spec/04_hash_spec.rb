# frozen_string_literal: true

RSpec.describe Hash do
  subject(:my_car) do
    {
      make: 'Volkswagen',
      model: 'Jetta',
      year: 2017,
      parking_camera?: true,
      assisted_steering?: false
    }
  end

  # remove the 'x' before running this test
  xit 'is newer than 2015' do
    # Write a test that verifies the above statement.
  end

  # remove the 'x' before running this test
  xit 'has a parking camera' do
    # Write a test that verifies the above statement.
  end

  # remove the 'x' before running this test
  xit 'does not have assisted steering' do
    # Write a test that verifies the above statement.
  end
end
