# it3038c-scripts

# Project 3

This bash script will run several commands on your CentOS computer and send you an Email with the results of those commands. The base script provides information on disk space usage, with the addition of average cpu usage, logged in users, statuses of several services, and any disk errors.

Please keep in mind that the disk check takes a few minutes to run.

This script can be run from anywhere on your CentOS computer.

Please ensure after you have downloaded the script, you have permission to execute it with chmod.

You will need to change the emailAddress variable to reflect your own Email. There may be other modifications necessary such as the disk name in the diskUse variable, and the check variable.

Any services can be added by creating a variable and following the same process as the other services. Remember to add that variable to the body of the Email as well.

To execute the script, use the following command while in the script's directory:

```bash
./project3.sh
```


# Project 2

This bash script will read the hard drive space used on your CentOS computer and send you an Email giving the value.

This script could be located in any directory.

The variables diskUse, alertUse and server can stay the same on your computer. You will have to change emailAddress to your own.

diskUse starts with the disk free (df) command and pipes it through grep and awk to print out the percentage of disk space used on root. alertUse is a percentage of your choice. 75% may be a bit low for a disk space warning depending on your needs. server simply returns the hostname.

This is a simple if then else statement that determines whether the amount of space used is less that (-lt) the amount of space necessary to trigger an alert. It will sent you an Email in both cases, but the subject and body will change based on whether the message is informational or a warning.

Once you have changed the variables to fit your needs, the script should run without having to alter anything.


# Python Arrow

The following documentation represents 3 of many uses for the Arrow plugin for Python. Arrow is used to format time and date information which can be so tedious within many programming languages. This will be done in a virtual environment. Start by creating the virtual environment with the commands below.

```bash
virtualenv ~/venv/arrow
```

This vitual environment will now be activated.

```bash
source ~/venv/arrow/bin/activate
```

Now that our virtual environment is setup, we can add the plugin without affecting our server.

```bash
pip3 install arrow
```

Now enter python and import the arrow plugin

```bash
python3
import arrow
```

Our virtual environment is now setup.

We can now use Arrow to view the date and/or time with any format we choose. Here are 3 ways of using Arrow to get an output in standard month/day/year and hour:minute:second formats. The first example will give the current date. The second example will give the current time. The third example will give the current time in the Pacific time zone. All examples will use "current" as the variable. Please pay attention to CAPS.

1


```bash
current = arrow.now()
current.format ('MM/DD/YYYY')
```

2

```bash
current = arrow.now()
current.format('hh:mm:ss')
```

3

```bash
current = arrow.now('US/Pacific')
current.format('hh:mm:ss')
```

You have now successfully displayed the date or time for 3 different situations. Hopefully you have enjoyed the process. There are very many different and useful formats for Arrow that have not been explored in the demo. These can be found at https://arrow.readthedocs.io/en/stable/

Don't forget to quit python with "quit()" and end your virtual environment with "deactivate"
