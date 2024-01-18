## 12: Removing directories

We now have a few (empty) directories that we should remove. To do this use the [rmdir][] command, this will only remove empty directories so it is quite safe to use. If you want to know more about this command (or any Unix command), then remember that you can just look at its man page.

```bash
learner@:~$ cd ~/learning_unix/outer/
learner@:outer$ rmdir inner/
learner@:outer$ cd ..
learner@:learning_unix$ rmdir outer/
learner@:learning_unix$ ls
learner@:learning_unix$
```

*** Note, you have to be outside a directory before you can remove it with `rmdir` ***

[rmdir]: https://en.wikipedia.org/wiki/Rmdir

```{=html}	
<div id="buttons-container" class="flex-container">
<a role="button" class="flex-item btn btn-danger" href="11_man_pages.html">Previous</a> 
<a role="button" class="flex-item btn btn-info" href="index.html">Table of Content</a> 
<a role="button" class="flex-item btn btn-success" href="13_tab_completion.html">Next</a>
</div>
```