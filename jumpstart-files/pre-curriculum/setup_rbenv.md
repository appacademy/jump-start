##Installing rbenv on Mac

### rbenv:

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


### Atom:

In addition to ruby, you'll want a native text editor. We recommend using [atom][atom].

[remove-rvm]: ./remove_rvm.md
[atom]: https://atom.io/
