## 21: Viewing files with less

So far we have covered listing the contents of directories and moving/copying/deleting either files and/or directories. Now we will quickly cover how you can look at files. The [less][less command] command lets you view (but not edit) text files. We will use the [echo][echo command] command to put some text in a file and then view it:

```bash
learner@:learning_unix$ echo "Call me Ishmael."
Call me Ishmael.
learner@:learning_unix$ echo "Call me Ishmael." > opening_lines.txt
learner@:learning_unix$ ls
opening_lines.txt
learner@:learning_unix$ less opening_lines.txt
```

On its own, `echo` isn't a very exciting Unix command. It just echoes text back to the screen. But we can redirect that text into an output file by using the `>` symbol. This allows for something called file [redirection][].

>***Careful when using file redirection (>), it will overwrite any existing file of the same name***

When you are using less, you can bring up a page of help commands by pressing `h`, scroll forward a page by pressing `space`, or go forward or backwards one line at a time by pressing `j` or `k`. To exit less, press `q` (for quit). The `less` program also does many other useful things (including text searching).

[less command]: https://en.wikipedia.org/wiki/Less_(Unix)
[echo command]: https://en.wikipedia.org/wiki/Echo_(command)
[redirection]: https://en.wikipedia.org/wiki/Redirection_(Unix)

```{=html}	
<div id="buttons-container" class="flex-container">
<a role="button" class="flex-item btn btn-danger" href="20_copying_directories.html">Previous</a> 
<a role="button" class="flex-item btn btn-info" href="index.html">Table of Content</a> 
<a role="button" class="flex-item btn btn-success" href="22_viewing_files_cat.html">Next</a>
</div>
```