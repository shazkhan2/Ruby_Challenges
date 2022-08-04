require_relative "../lib/valid_sudoku"

describe "#valid_section?" do

  it "should correctly evaluate an array of 9 numbers" do
    expect(valid_section?([2, 4, 6, 8, 1, 3, 5, 7, 9])).to eq true
    expect(valid_section?([2, 4, 9, 8, 1, 3, 5, 7, 9])).to eq false
  end

end

describe "#vertical_lines" do

  it "should return an array of the vertical sudoku lines" do
    expect(vertical_lines([ [5, 3, 4, 6, 7, 8, 9, 1, 2],
                            [6, 7, 2, 1, 9, 5, 3, 4, 8],
                            [1, 9, 8, 3, 4, 2, 5, 6, 7],
                            [8, 5, 9, 7, 6, 1, 4, 2, 3],
                            [4, 2, 6, 8, 5, 3, 7, 9, 1],
                            [7, 1, 3, 9, 2, 4, 8, 5, 6],
                            [9, 6, 1, 5, 3, 7, 2, 8, 4],
                            [2, 8, 7, 4, 1, 9, 6, 3, 5],
                            [3, 4, 5, 2, 8, 6, 1, 7, 9]]))
    .to eq [[5, 6, 1, 8, 4, 7, 9, 2, 3],
            [3, 7, 9, 5, 2, 1, 6, 8, 4],
            [4, 2, 8, 9, 6, 3, 1, 7, 5],
            [6, 1, 3, 7, 8, 9, 5, 4, 2],
            [7, 9, 4, 6, 5, 2, 3, 1, 8],
            [8, 5, 2, 1, 3, 4, 7, 9, 6],
            [9, 3, 5, 4, 7, 8, 2, 6, 1],
            [1, 4, 6, 2, 9, 5, 8, 3, 7],
            [2, 8, 7, 3, 1, 6, 4, 5, 9]]
  end
end

describe "#regions" do

  it "should return an array of the sudoku regions" do
    expect(regions([["a", "a", "a", "b", "b", "b", "c", "c", "c"],
                    ["a", "a", "a", "b", "b", "b", "c", "c", "c"],
                    ["a", "a", "a", "b", "b", "b", "c", "c", "c"],
                    ["d", "d", "d", "e", "e", "e", "f", "f", "f"],
                    ["d", "d", "d", "e", "e", "e", "f", "f", "f"],
                    ["d", "d", "d", "e", "e", "e", "f", "f", "f"],
                    ["g", "g", "g", "h", "h", "h", "i", "i", "i"],
                    ["g", "g", "g", "h", "h", "h", "i", "i", "i"],
                    ["g", "g", "g", "h", "h", "h", "i", "i", "i"]]))
    .to eq [["a", "a", "a", "a", "a", "a", "a", "a", "a"],
            ["b", "b", "b", "b", "b", "b", "b", "b", "b"],
            ["c", "c", "c", "c", "c", "c", "c", "c", "c"],
            ["d", "d", "d", "d", "d", "d", "d", "d", "d"],
            ["e", "e", "e", "e", "e", "e", "e", "e", "e"],
            ["f", "f", "f", "f", "f", "f", "f", "f", "f"],
            ["g", "g", "g", "g", "g", "g", "g", "g", "g"],
            ["h", "h", "h", "h", "h", "h", "h", "h", "h"],
            ["i", "i", "i", "i", "i", "i", "i", "i", "i"]]
  end
end

describe "#valid_sudoku?" do

  it "should return true on a valid sudoku board" do
    expect(valid_sudoku?([ [5, 3, 4, 6, 7, 8, 9, 1, 2],
                            [6, 7, 2, 1, 9, 5, 3, 4, 8],
                            [1, 9, 8, 3, 4, 2, 5, 6, 7],
                            [8, 5, 9, 7, 6, 1, 4, 2, 3],
                            [4, 2, 6, 8, 5, 3, 7, 9, 1],
                            [7, 1, 3, 9, 2, 4, 8, 5, 6],
                            [9, 6, 1, 5, 3, 7, 2, 8, 4],
                            [2, 8, 7, 4, 1, 9, 6, 3, 5],
                            [3, 4, 5, 2, 8, 6, 1, 7, 9]]))
    .to eq true
  end

  it "should return false on an invalid sudoku board" do
    expect(valid_sudoku?([ [5, 3, 4, 6, 7, 8, 9, 1, 2],
                            [6, 7, 2, 1, 9, 5, 3, 4, 8],
                            [1, 9, 8, 3, 4, 2, 5, 6, 7],
                            [8, 5, 9, 7, 6, 1, 4, 2, 3],
                            [4, 2, 6, 8, 5, 3, 7, 9, 1],
                            [9, 6, 1, 5, 3, 7, 2, 8, 4],
                            [7, 1, 3, 9, 2, 4, 8, 5, 6],
                            [2, 8, 7, 4, 1, 9, 6, 3, 5],
                            [3, 4, 5, 2, 8, 6, 1, 7, 9]]))
    .to eq false
  end

end


