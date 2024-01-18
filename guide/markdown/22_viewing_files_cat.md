## 22: Viewing files with cat

Let's add another line to the file:

```bash
learner@:learning_unix$ echo "The primroses were over." >> opening_lines.txt
learner@:learning_unix$ cat opening_lines.txt
Call me Ishmael.
The primroses were over.
```

Notice that we use `>>` and not just `>`. This operator will **append** to a file. If we only used `>`, we would end up overwriting the file. The [cat][cat command] command displays the contents of the file (or files) and then returns you to the command line. Unlike `less` you have no control on how you view that text (or what you do with it). It is a very simple, but sometimes useful, command. You can use `cat` to quickly combine multiple files or, if you wanted to, make a copy of an existing file:

```bash
learner@:learning_unix$ cat opening_lines.txt > file_copy.txt
```

And again, let's clean up the redundant file:

```bash
learner@:learning_unix rm file_copy.txt
```

[cat command]: http://en.wikipedia.org/wiki/Cat_(Unix)

```{=html}	
<div id="buttons-container" class="flex-container">
<a role="button" class="flex-item btn btn-danger" href="21_viewing_files_less.html">Previous</a> 
<a role="button" class="flex-item btn btn-info" href="index.html">Table of Content</a> 
<a role="button" class="flex-item btn btn-success" href="23_counting_characters.html">Next</a>
</div>
```