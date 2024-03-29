## 23: Counting characters, words and lines in a file

```bash
learner@:learning_unix$ ls
opening_lines.txt

learner@:learning_unix$ ls -l
total 4
-rw-r--r-- 1 learner learner 0 Dec  2 09:09 opening_lines.txt

learner@:learning_unix$ wc opening_lines.txt
2  7 42 opening_lines.txt

learner@:learning_unix$ wc -l opening_lines.txt
2 opening_lines.txt
```

The `ls -l` option shows us a long listing, which includes the size of the file in bytes (in this case '42'). Another way of finding this out is by using Unix's [wc](https://en.wikipedia.org/wiki/Wc_(Unix)){.external target="_blank"} command (word count). By default this tells you many lines, words, and characters are in a specified file (or files), but you can use command-line options to give you just one of those statistics (in this case we count lines with `wc -l`).

```{=html}	
<div id="buttons-container" class="flex-container">
<a role="button" class="flex-item btn btn-danger" href="22_viewing_files_cat.html">Previous</a> 
<a role="button" class="flex-item btn btn-info" href="index.html">Table of Content</a> 
<a role="button" class="flex-item btn btn-success" href="24_editing_small_files.html">Next</a>
</div>
```