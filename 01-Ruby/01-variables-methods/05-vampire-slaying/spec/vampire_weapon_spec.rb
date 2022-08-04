require_relative '../lib/vampire_weapon'

describe 'The method vampire_reaction' do
  it 'returns a String' do
    expect(vampire_reaction('sword')).to be_a String
  end

  it 'makes the vampire laugh at ineffective weapons' do
    expect(vampire_reaction('pizza cutter')).to eq 'The vampire laughs at your ineffective weapon.'
  end

  it 'slays the vampire and ends the story' do
    expect(vampire_reaction('stake')).to eq 'The vampire disintegrates!'
  end
end

describe 'The method vampire_reaction_enhanced' do
  it 'returns a String' do
    expect(vampire_reaction_enhanced('stake', 'wood')).to be_a String
  end

  it 'makes the vampire laugh at ineffective weapons' do
    expect(vampire_reaction_enhanced('pizza cutter', 'plastic'))
      .to eq 'The vampire laughs at your ineffective weapon.'
  end

  it 'makes the vampire desintegrate' do
    expect(vampire_reaction_enhanced('stake', 'wood'))
      .to eq 'The vampire disintegrates!'
  end

  it 'makes the vampire explode from any silver weapon ' do
    expect(vampire_reaction_enhanced('pizza cutter', 'silver'))
      .to eq 'The vampire explodes!'
  end
end
