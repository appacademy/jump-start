##Installing rbenv on Mac

### Why version control Ruby?

Out-of-date programmer Ollie uses Ruby 1.9.

Ollie is coding one day in an old project and realizes there's a really cool method he wants to use (for example, [#to_h][#to_h] to turn an object into a hash).

But Ruby 1.9 doesn't have #to_h!  Ruby 2.0 has #to_h.

Wouldn't it be great if Ollie could switch between ruby versions easily?  What if Ollie has tons of different projects using different ruby versions?

[#to_h]: http://ruby-doc.org/core-2.0.0/Struct.html#method-i-to_h

### Enter rbenv
[rbenv][rbenv] keeps track of which version of Ruby you're using.

[rbenv]: https://github.com/sstephenson/rbenv


### For Mac OS X:

If you have previously installed rvm, you must [remove it!][remove-rvm]

0. Open the terminal
0. [Install Homebrew](http://brew.sh)
0. Copy, paste, and run the following:
  - `brew install rbenv`
  - `brew install ruby-build`
0. Copy, paste, and run the following:
  - `echo 'export PATH=$PATH:$HOME/.rbenv/bin' >> ~/.bash_profile`
  - `echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile`
0. Close the terminal, and re-open
0. Copy, paste, and run:
  - `rbenv install 2.1.2`
  - `rbenv global 2.1.2`

Try running a ruby program to test!

[remove-rvm]: ./remove_rvm.md
