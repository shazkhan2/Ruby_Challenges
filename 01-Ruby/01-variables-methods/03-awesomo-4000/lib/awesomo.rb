ACTORS = ['Adam Sandler', 'Rob Schneider', 'Kevin Hart']

SETTINGS = [
  ' is on a desert island! ',
  ' is a sex therapist for pandas! ',
  ' is trapped inside a Quiznos! ',
  ' is a pizzaphobic pothead! ',
  ' is a melted cheese addict! ',
  ' studies law at Trump University! '
]

RELATIONS = [
  'His girlfriend',
  'His BFF',
  'His grandma',
  'His boss',
  'His landlord',
  'His pet'
]

PUNCHLINES = [
  ' is a doorman who always high-fives children of divorce.',
  ' is a coconut or something.',
  ' is a dolphin\'s only hope to become Magic Mike.',
  ' is secretly MTV\'s Dan Cortese.',
  ' aims to become Mr. Olympia 1983.',
  ' is a millionaire living in a garbage truck.',
  ' plays World of Warcraft using only elbows.',
  ' and him plot to steal $80 million worth of recycling cans.'
]

def plot_generator
  actor = pick_actor
  setting = pick_setting
  relation = pick_relation
  punchline = pick_punchline

  "#{actor} #{setting} #{relation}. #{punchline}"
end

def pick_actor
  ACTORS.sample
end

def pick_setting
  setting = SETTINGS.sample
  "#{setting}"
end

def pick_relation
  "He lives with #{RELATIONS.sample}"

end

def pick_punchline
  punchline = PUNCHLINES.sample
  "In his other life, he #{punchline}"
end

puts plot_generator
