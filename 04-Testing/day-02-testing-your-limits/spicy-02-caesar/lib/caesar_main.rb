# frozen_string_literal: true

require_relative '../lib/caesar_breaker'
require_relative '../lib/caesar_translator'
require_relative '../lib/database'

# This file can be run in the console.

phrase = CaesarBreaker.new('Rovvy, Gybvn!')
phrase.decrypt
