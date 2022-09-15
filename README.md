# Cppsetup raylib
A bash script to easily setup raylib projects using git, make and cmake.

Note: I use () to denote a command. Don't include the
() when typing commands.
Note: raylib will be compiled with opengl 2.1 and in Debug
mode. This can be changed in the provided templates.
Note: sublime text is the default editor to open the project. This can also be 
changed in the provided templates.

# Setting it up
To make the shell script useable in any directory,
making it a command/alias, you must add one line 
to your .bashrc file and another to your .bash_aliases 
file. You can find these files in your root directory ( cd ~ && la ).
If you don't see a .bash_aliases file then make one! Its 
as easy as using the command ( touch .bash_aliases ).

# Editing the .bashrc file
Here we need to add where we want to store our script
to our environments PATH.

Open the .bashrc file and scroll all the way down
to the bottom. Add this line " export PATH="/path:$PATH" ".
Note that your /path will depend on where you want to store
the script. I created a directory in root called bin and
placed the script there.

# Editing the .bash_aliases
Here we are defining the name of the command.

Open the .bash_aliases file and add the line
" alias cppsetup='cppsetup.sh' ". If you would like
to use a different name replace cppsetup on the left side of
the = with whatever you want your command to be. FOR THESE CHANGES TO
TAKE EFFECT YOU MUST RESTART YOUR COMPUTER BEFORE PROCEEDING. If you do not
restart your computer you will get an error message that says "cppsetup: command not found".

# Downloading the needed files
All you need to do is initialize a directory with git and clone
the repo!

First navigate to the directory of your choice and use ( git init ). Then enter the 
following command ( git clone https://github.com/ajhelbig/cppsetup.git ).
You will see that a new directory named "cppsetup" has appeared in the directory.
All the files needed to make cppsetup work are in the new directory. You can view them by
using the command ( cd cppsetup && ls )

# Finishing up
Firstly lets make the shell script cppsetup.sh executable. Do this by navigating
into the "cppsetup" directory and typing the following command
( chmod +x cppsetup.sh ). The shell script is now executable! This setp is important.
Move the cppsetup.sh file into the directory you specified in your .bashrc file /path above.
This can be done using the command ( mv cppsetup.sh /path ) where /path is the one specified
above. Next lets move the cppsetup-templates into the default Templates directory found on Ubuntu
distros using ( mv cppsetup-templates ~/Templates ). Assuming all goes well and you have rebooted your computer
the command should be ready to use! Try it by typing ( cppsetup raylib ). The process may take a while
since the setup process includes fetching the raylib library from github and building it from source.

#  End Notes
The motivation of this script is to make projects more accessable when storing them on github. I like the 
idea of being able to clone a project and have it build everything needed automatically using cmake.
