## 28: Combining Unix commands with pipes

One of the most powerful features of Unix is that you can send the output from one command or program to any other command (as long as the second command accepts input of some sort). We do this by using what is known as a [pipe](https://en.wikipedia.org/wiki/Pipe_(Unix)){.external target="_blank"}. This is implemented using the '|' character (which is a character which always seems to be on different keys depending on the keyboard that you are using). Think of the pipe as simply connecting two Unix programs. Here's an example which introduces some new Unix commands:

```bash
learner@:learning_unix$ 
grep was opening_lines.txt | wc -c
316

learner@:learning_unix$
grep was opening_lines.txt | sort | head -n 3 | wc -c
130
```

The first use of `grep` searches the specified file for lines matching 'was', it sends the lines that match through a pipe to the `wc` program. We use the `-c` option to just count characters in the matching lines (316).

The second example first sends the output of `grep` to the Unix `sort` command. This sorts a file alphanumerically by default. The sorted output is sent to the `head` command which by default shows the first 10 lines of a file. We use the `-n` option of this command to only show 3 lines. These 3 lines are then sent to the `wc` command as before.

>***Whenever making a long pipe, test each step as you build it!***

```{=html}	
<div id="buttons-container" class="flex-container">
<a role="button" class="flex-item btn btn-danger" href="27_working_with_columns.html">Previous</a> 
<a role="button" class="flex-item btn btn-info" href="index.html">Table of Content</a> 
<a role="button" class="flex-item btn btn-success" href="29_power_commands.html">Next</a>
</div>
```