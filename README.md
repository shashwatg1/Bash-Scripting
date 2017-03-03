#Bash Scripting

###[Course Link] (http://ryanstutorials.net/bash-scripting-tutorial/#structure)

##1. What is a Bash Script - What are they, how do they work and how to run them.

A Bash script is a plain text file which contains a series of commands. These commands are a mixture of commands we would normally type ouselves on the command line (such as ls or cp for example) and commands we could type on the command line but generally wouldn't. An important point to remember though is:

Anything you can run normally on the command line can be put into a script and it will do exactly the same thing. Similarly, anything you can put into a script can also be run normally on the command line and it will do exactly the same thing.

It's just that instead of typing them at the command line we are now entering them into a plain text file.
It is convention to give files that are Bash scripts an extension of .sh

IMPORTANT: Before we can execute a script it must have the execute permission set (for safety reasons this persmission is generally not set by default).

> chmod 755 myscript.sh # used to give permission.

The shorthand 755 is used for scripts as it allows the owner to write or modify the script and for everyone to execute the script.

IMPORTANT: ./ is very important. When we write any command, Bash only looks in specific directories and doesn't consider sub directories or your current directory. It will look through "$PATH" directories in order and execute the first instance of the program or script that it finds. $PATH may be set by user. Dot ( . ) is actually a reference to your current directory. Assuming this script is in my home directory I could also have run it by using an absolute path like /home/myComputer/myscript.sh

IMPORTANT: #!/bin/bash. The hash exclamation mark ( #! ) character sequence is referred to as the Shebang. Following it is the path (generally absolute) to the interpreter (or program) that should be used to run (or interpret) the rest of the lines in the text fileThe shebang must be on the very first line of the file. No spaces before the # or between the ! and the path to the interpreter. It is possible to leave out the line with the shebang and still run the script but it is unwise. If you are at a terminal and running the Bash shell and you execute a script without a shebang then Bash will assume it is a Bash script. So this will only work assuming the user running the script is running it in a Bash shell and there are a variety of reasons why this may not be the case, which is dangerous.

> bash myscript.sh #This is also allowed

###Summary
* commands work exactly the same on the command line as they do within a script
* #! refers the interpreter path and must be given as a good practice.
* ./file.sh or /path/file.sh are used if file is not in the $PATH.
* Formatting is important in bash. 

##2. Variables - Store data temporarily for later use.

A variable is a temporary store for a piece of information. Variables may have their value set in a few different ways. The most common are to set the value directly and for its value to be set as the result of processing by a command or program.To read the variable we then place its name (preceded by a $ sign) anywhere in the script we would like. Before Bash interprets (or runs) every line of our script it first checks to see if any variable names are present. For every variable it has identified, it replaces the variable name with its value. Then it runs that line of code and begins the process again on the next line.

Command line arguments. We could run the command ls -l /etc. -l and /etc are both command line arguments to the command ls. We can do similar with our bash scripts. To do this we use the variables $1 to represent the first command line argument, $2 to represent the second command line argument and so on. These are automatically set by the system when we run our script so all we need to do is refer to them.

* $0 - The name of the Bash script.
* $1 - $9 -> The first 9 command line arguments to the Bash script.
* $# - How many arguments were passed to the Bash script.
* $@ - All the arguments supplied to the Bash script.
* $? - The exit status of the most recently run process.
* $$ - The process ID of the current script.
* $USER - The username of the user running the script.
* $HOSTNAME - The hostname of the machine the script is running on.
* $SECONDS - The number of seconds since the script was started.
* $RANDOM - Returns a different random number each time is it referred to.
* $LINENO - Returns the current line number in the Bash script.

> variable=value #To manually set a value to a variable

IMPORTANT: Note there is no space on either side of the equals ( = ) sign.

If we write variable = name, name is stored in variable. If we want to store more than 1 word, we need to use quotes. This is because under normal circumstances Bash uses a space to determine separate items.

> varaible=Hello # for single word
> varaible="Hello World" # quotes needed for more than 1 word

IMPORTANT: Single quotes will treat every character literally. Double quotes will allow you to do variabel substitution (that is include variables within the setting of the value).
Example:
> myvar='Hello World'
> newvar="More $myvar"
> echo $myvar #Hello World
> echo $newvar #More Hello World
> newvar='More $myvar'
> echo $newvar #More $myvar

IMPORTANT: We can store commands in variables with a $ sign in front
Example:
> myvar=$( ls )
> echo $myvar # They are equivalent to writing ls but all the newlines are stripped out and the output is now all on a single line.

Exporting Variables. Variables are limited to the process they were created in. A script may run another script as one of its commands. If we want the variable to be available to the second script then we need to export the variable. Exporting is call by value.

###Summary
* Bash is a case sensitive environment
* When referring to or reading a variable we place a $ sign before the variable name.
* When setting a variable we leave out the $ sign.
* Command line variables can be accesses as $1, etc.
* varaible = value or 'value' or "value" and thier difference
* variable = $(command)
* Exporting variables is call by value.
* ./script.sh can be run from within another script.

##3. Input - Different ways to supply data and directions to your Bash script.


###Summary


##4. Arithmetic - Perform various arithmetic operations in your Bash script.


###Summary


##5. If Statements - How to make decisions within your Bash script.


###Summary


##6. Loops - A variety of ways to perform repetitive tasks.


###Summary


##7. Functions - Reuse code to make life easier.


###Summary


##8. User Interface - Make your scripts user friendly.


###Summary
