def chorus(lyrics, number_of_times = 1, vibrato = 0, strong = false)
  song_chorus = []
  lyrics += lyrics[lyrics.size - 1] * vibrato
  lyrics.upcase! if strong

  number_of_times.times do
    song_chorus << lyrics
  end

  song_chorus.join(" ")
end

def better_chorus(lyrics:, vibrato: 0, number_of_times: 1, strong: false)
  # TODO: implement this better version which no longer relies on argument order dependency
end
