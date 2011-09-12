#!/usr/bin/env ruby

# This opens jabberwocky.txt, reads each line, and writes them to the screen.

# First, set the name of the file to the constant INPUT. This makes it easy to
# change the name later.
INPUT = 'jabberwocky.txt'

# Now, open the file. This executes the block (do |f| ... end), with 'f'
# assigned to the File object. When the block is done, the file is
# automatically closed.
File.open(INPUT) do |f|

  # This executes the block (do |line| ... end) for every line in the file.
  f.each do |line|
    puts line
  end

end
