## 09: Finding your way back home

Remember that the command prompt shows you the name of the directory that you are currently in, and that when you are in your home directory it shows you a tilde character (`~`) instead? This is because Unix uses the tilde character as a short-hand way of [specifying a home directory](https://en.wikipedia.org/wiki/Tilde#Directories_and_URLs){.external target="_blank"}.

See what happens when you try the following commands (use the `pwd` command after each one to confirm the results if necessary):

```bash
cd /
cd ~
cd
```

Hopefully, you should find that `cd` and `cd ~` do the same thing, i.e. they take you back to your home directory (from wherever you were). You will frequently want to jump straight back to your home directory, and typing `cd` is a very quick way to get there.

You can also use the `~` as a quick way of navigating into subdirectories of your home directory when your current directory is somewhere else. I.e. the quickest way of navigating from the root directory to your `learning_unix` directory is as follows:

```bash
learner@:~$ cd /
learner@:/$ cd ~/learning_unix
```

```{=html}	
<div id="buttons-container" class="flex-container">
<a role="button" class="flex-item btn btn-danger" href="08_absolute_and_relative.html">Previous</a> 
<a role="button" class="flex-item btn btn-info" href="index.html">Table of Content</a> 
<a role="button" class="flex-item btn btn-success" href="10_advanced_ls.html">Next</a>
</div>
```