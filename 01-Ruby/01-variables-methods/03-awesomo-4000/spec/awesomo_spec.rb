# Encoding: utf-8
require_relative '../lib/awesomo'


describe '#plot_generator' do
  it 'returns a string' do
    expect(plot_generator.class).to eq String
  end

  it 'returns a valid plot' do
    plot = plot_generator
    actor = plot.split.take(2).join(" ")
    setting = plot.split("!").first.split[2..-1].join(" ")
    expect(ACTORS).to include(actor)
    expect(SETTINGS).to include(" " + setting + "! ")
  end

  it 'gets the right word count' do
    expect(plot_generator.split(' ').count).to be > 11
  end

  it 'returns different results each time' do
    plot_1 = plot_generator
    plot_2 = plot_generator
    plot_3 = plot_generator
    plot_4 = plot_generator
    expect(plot_1).to_not eq plot_2
    expect(plot_3).to_not eq plot_4
  end
end
