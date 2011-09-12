#!/usr/bin/env ruby

# This opens jabberwocky.txt, reads each line, and breaks it into words, which
# it prints to the screen.

# First, set the name of the file to the constant INPUT. This makes it easy to
# change the name later.
INPUT = 'jabberwocky.txt'

# Now, open the file. This executes the block (do |f| ... end), with 'f'
# assigned to the File object. When the block is done, the file is
# automatically closed.
File.open(INPUT) do |f|

  # This executes the block (do |line| ... end) for every line in the file.
  f.each do |line|

    # When we split on words, it also included the punctuation. We'd like to
    # get rid of all that.
    line.split.each do |word|

      # We'll do this using a very simple regular expression. \w matches
      # anything that's a word. The definition of *word* here includes an
      # underscore, but we won't worry about that. \W matches anything that's
      # *not* a word.
      #
      # word.gsub removes replaces everything that matches the regular
      # expression (regex) with the argument in the second string (here an
      # empty string), and it returns that new string.
      #
      # word.gsub! goes a step further and changes word in place.
      word.gsub!(/\W/, '')

      # word.downcase makes everything lowercase and returns a new string.
      # word.downcase! makes everything lowercase in word.
      word.downcase!

      # This process -- taking a word removing all the superfluous fluff from
      # it so that we can process it more efficiently, is called
      # *normalization*. It's kind of it's own thing, it's own discrete step.
      # In a few steps, we'll think about how to make our program reflect that.

      puts word

    end
  end
end


