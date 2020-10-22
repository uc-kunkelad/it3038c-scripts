# it3038c-scripts

# Project 2

This bash script will read the hard drive space used on your CentOS computer and send you an Email giving the value. I'll break down the commands below.

```bash
This is the bash portion
```



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
