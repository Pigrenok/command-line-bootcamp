## 15: Moving files

Now, let's assume that we want to move these files to a new directory ('temp'). We will do this using the Unix [mv](https://en.wikipedia.org/wiki/Mv){.external target="_blank"} (move) command. Remember to use tab completion:

```bash
learner@:learning_unix$ mkdir temp
learner@:learning_unix$ mv heaven.txt temp/
learner@:learning_unix$ mv earth.txt temp/
learner@:learning_unix$ ls
temp
learner@:learning_unix$ ls temp/
earth.txt  heaven.txt
```

For the `mv` command, we always have to specify a source file (or directory) that we want to move, and then specify a target location. If we had wanted to we could have moved both files in one go by typing any of the following commands:

```bash
mv *.txt temp/
mv *t temp/
mv *ea* temp/
```

The asterisk `*` acts as a [wild-card character](https://en.wikipedia.org/wiki/Wildcard_character){.external target="_blank"}, essentially meaning 'match anything'. The second example works because there are no other files or directories in the directory that end with the letters 't' (if there was, then they would be moved too). Likewise, the third example works because only those two files contain the letters 'ea' in their names. Using wild-card characters can save you a lot of typing.

The '?' character is also a wild-card but with a slightly different meaning. See if you can work out what it does.

```{=html}	
<div id="buttons-container" class="flex-container">
<a role="button" class="flex-item btn btn-danger" href="14_making_files.html">Previous</a> 
<a role="button" class="flex-item btn btn-info" href="index.html">Table of Content</a> 
<a role="button" class="flex-item btn btn-success" href="16_renaming_files.html">Next</a>
</div>
```