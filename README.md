# Cppsetup
A bash script to easily setup raylib projects.
Note: I use () to denote a command. Don't include the
() when typing commands.

#Setting it up
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
the = with whatever you want your command to be.

# Downloading the needed files
... finish up instructions
