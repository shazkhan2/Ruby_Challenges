def valid_section?(section)
  # TODO: your code here. There should be an array from 1-9 with no repetition. integers
section.uniq.length ==9 && section.sort == (1..9).to_a

end

def vertical_lines(board)
  # TODO: your code here. 9x9 array, where the columns of an array transposes to become a row.integers
 vertical_lines = board.transpose
end

# def regions(board)
#   # TODO: your code here. 9x9 array, where each 3x3 grid becomes a row. the first grid is a, then b and so on. string
#   # Lazy solution
#   merged_array = board.flatten.sort
#   merged_array.each_slice(9).to_a
# end

def regions(board)
result = []

(0..8).each do |matrix|
row_index = (matrix / 3) * 3
col_index = (matrix % 3 ) *3

    region = []
    (0..2).each do |i|
      (0..2).each do |j|
        region.push(board[row_index +i][col_index + j])
      end
    end
    result.push(region)
end

result
end


def valid_sudoku?(board)
  # TODO: your code here. Each 3x3 grid has unique numbers. Integers.
end

puts valid_section?([1,2,3,4,5,6,7,8,9])
puts valid_section?([1,2,3,4,5,6,7,8,9,1])
puts vertical_lines ([ [5, 3, 4, 6, 7, 8, 9, 1, 2],
[6, 7, 2, 1, 9, 5, 3, 4, 8],
[1, 9, 8, 3, 4, 2, 5, 6, 7],
[8, 5, 9, 7, 6, 1, 4, 2, 3],
[4, 2, 6, 8, 5, 3, 7, 9, 1],
[7, 1, 3, 9, 2, 4, 8, 5, 6],
[9, 6, 1, 5, 3, 7, 2, 8, 4],
[2, 8, 7, 4, 1, 9, 6, 3, 5],
[3, 4, 5, 2, 8, 6, 1, 7, 9]])

puts regions ([["a", "a", "a", "b", "b", "b", "c", "c", "c"],
["a", "a", "a", "b", "b", "b", "c", "c", "c"],
["a", "a", "a", "b", "b", "b", "c", "c", "c"],
["d", "d", "d", "e", "e", "e", "f", "f", "f"],
["d", "d", "d", "e", "e", "e", "f", "f", "f"],
["d", "d", "d", "e", "e", "e", "f", "f", "f"],
["g", "g", "g", "h", "h", "h", "i", "i", "i"],
["g", "g", "g", "h", "h", "h", "i", "i", "i"],
["g", "g", "g", "h", "h", "h", "i", "i", "i"]])