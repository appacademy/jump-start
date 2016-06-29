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

1.  Open terminal
2.  First we want to make sure we don't have another ruby version manager on our computer (like rvm). Copy, paste, and run the following, one line at a time:
  - `sudo rvm implode`
    - If it says `sudo: rvm: command not found`, that's fine.
  - `sudo rm -rf ~/.rvm`
  - `brew ls --versions rbenv`
    - If the `brew` command doesn't work, you must first [install Homebrew](http://brew.sh)     
3. If nothing shows up after you run "brew ls --versions rbenv", copy, paste, and run the following:
  - `brew install rbenv`
  - `brew install ruby-build`
4. Copy, paste, and run:
  - `atom ~/.bash_profile`
    - If this doesn't work, you probably haven't ever created your bash profile. Go ahead and make this file using `touch ~/.bash_profile`   
5. In the text editor:
  - Search (command+F) for "rvm", and delete any lines that have it.
  - Copy and paste the following at the bottom:
  ```
    export PATH="$HOME/.rbenv/bin:$PATH"
    if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

  ```
  - Save and quit.
6. Copy, paste, and run:
  - `rbenv install 2.1.2`
  - `rbenv global 2.1.2`


Try running a ruby program to test!
