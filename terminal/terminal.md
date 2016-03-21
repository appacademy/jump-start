# Using the Terminal

## Introduction

When writing code you will often find yourself needing to execute commands from the terminal. Sometimes this is the only way to accomplish certain tasks on the computer. This guide will walk you through some of the common terminal commands that you will find yourself using as well as some tips and tricks to speed up your terminal use.

## General Notes

- To execute a terminal command type it into the terminal and press enter
- Terminal commands are case sensitive. `ruby` is not the same thing as `Ruby`

## Paths in the Terminal

Terminal commands are generally executed in the context of your working directory. This is essentially the directory that you are currently located in. This can be thought of as the terminal version of navigating to a folder in finder. Usually when you launch the terminal you will start in what is known as your `home` directory. As we will discuss below, there are various commands you can use to navigate around to different directories.

Certain terminal commands need to be given a path to a file's location to function properly. For example: `ruby some_directory/some_file.rb` executes the `ruby` command using a file called `some_file.rb` which is found in a directory called `some_directory`. This is an example of a relative path. The terminal looks for a directory called `some_directory` in the working directory and then looks for a file called `some_file.rb`.

Another way to express a file's location is with an absolute path. An absolute path starts with a `/` and instructs the terminal to start looking from the root of your computer's directory structure. For example `ruby /home/ubuntu/workspace/some_directory/some_file.rb` would accomplish the same thing as `ruby some_directory/some_file.rb` but would work from any directory (assuming that there is a file called `some_file.rb` at that location in the computer's directory structure).

There are a few special symbols that you can use in your path to specify certain locations. The `.` represents your working directory. For example `./some_file.rb` refers to a file called `some_file.rb` that is located in the working directory.

The `..` symbol allows you to refer to the directory that contains the working directory. For example `../../some_file.rb` refers to the file `some_file.rb` that is located two directories up from the working directory.

## Commonly Used Commands

Here are some of the terminal commands you will use on a daily basis.

- `pwd` print working directory
- `ls` list
- `cd` change directory
- `mkdir` make directory
- `clear`
- `ruby`


### pwd
#### Print Working Directory

The `pwd` command prints out the path of the directory you are currently in. As mentioned above, many commands function in the context of the working directory. The `pwd` command is great for keeping track of where you are in your computer's directory structure.

![pwd](./pwd.png)

### ls
#### List Directory Contents

The `ls` command prints a list of the contents of a directory. By default it will list the contents of the working directory. If you use the `ls` command with a path to another directory it will print out that directory's contents.

![ls](./ls.png)

By default the `ls` command will not show the 'hidden' files in a directory. Hidden files are files whose names start with a `.` like `.inputrc` or `.bash_profile`. These hidden files are usually things like configuration and settings files that you will not need to change very often. In order to show these files with `ls` we can use the `-a` option.

![ls-hidden](./ls-hidden.png)

### cd
#### Change Working Directory

The `cd` command allows us to change our working directory. If we enter `cd` without any arguments it will take us back to our `home` directory. If we give it a path it will take us to the location specified by that path.

![cd](./cd.png)

The `cd` command is our main means of navigating around our computer's directory structure when using the terminal.

### mkdir
#### Make a New Directory

The `mkdir` command creates a new directory at a provided path. For example `mkdir my_new_directory` creates a new directory called `my_new_directory` in the working directory. `mkdir my_new_directory/another_new_directory` creates a new directory called `another_new_directory` in `my_new_directory` which itself is in the working directory.

By default `mkdir` can only make a new directory inside of an existing directory. If you tried to enter `mkdir funky/pics` and `funky` doesn't already exist it would not work. To get around this we can use the `-p` option. `mkdir -p funky/pics` would create both `funky` and `pics`.

![mkdir](./mkdir.png)

### clear
#### Clear the Terminal

My favorite terminal command is `clear`. It simply clears all the text from the terminal.

![clear1](./clear1.png)
![clear2](./clear2.png)

### ruby
#### Run a Ruby Program

As software developers we need a way to run our code. The `ruby` command does just that. Say you have a program saved in a file called `terminal_fun.rb`. In order to run it you would enter the command `ruby terminal_fun.rb`. This will execute your code and print the results to the terminal.

![ruby1](./ruby1.png)

If your code has any errors they will also be printed to the terminal.

![ruby2](./ruby2.png)

## Getting Help
### Google

As with most things, a good place to find out info about terminal commands is [google](http://google.com/). If you think that you should be able to do something using the terminal but don't know how then google it! If you want to figure out how to display the contents of a file in the terminal search for something like "display file contents in terminal" or "unzip file in terminal".

### explainshell.com

Sometimes while searching for terminal commands you will come across some really complex looking stuff. One resource that might be able to help you parse all this info is [explainshell](http://www.explainshell.com). This neat little website will break down a complicated terminal command into its various parts and give you a brief explanation of each bit.

### Man Pages

As we saw with `mkdir` and `ls`, some terminal commands can take options that change how they function. If you want to see a list of a command's options as well as detailed instructions about its use you can look at the command's 'man page'. A 'man page' is built in instructions for a terminal command or program. You can access a command's 'man page' by entering `man command>` into the terminal. For example, to see the 'man page' for `ls` you would type `man ls`.

![man-page](./man-page.png)

You can scroll around a 'man page' using the arrow keys and page up/down. To exit out of a 'man page' press 'q'. Alternatively you can use 'vim' keys 'j, k, h, l, d, and u' but unless you have some 'vim' chops I would stick with the arrow keys.

## Tips and Tricks
### ctrl-c
<!--TODO-->
### Tab Completion
<!--TODO-->
### Command History
<!--TODO-->
