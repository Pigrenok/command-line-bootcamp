## 07: Navigating upwards in the Unix filesystem

Frequently, you will find that you want to go 'upwards' one level in the directory hierarchy. Two dots `..` are used in Unix to refer to the _parent_ directory of wherever you are. Every directory has a parent except the root level of the computer. Let's go into the `learning_unix` directory and then navigate up two levels:

```bash
learner@:~$ cd learning_unix/
learner@:learning_unix$ cd ..
learner@:~$ cd ..
learner@:home$
```

What if you wanted to navigate up _two_ levels in the file system in one go? It's very simple, just use two sets of the `..` operator, separated by a forward slash:

```bash
cd ../..
```

```{=html}	
<div id="buttons-container" class="flex-container">
<a role="button" class="flex-item btn btn-danger" href="06_the_root_directory.html">Previous</a> 
<a role="button" class="flex-item btn btn-info" href="index.html">Table of Content</a> 
<a role="button" class="flex-item btn btn-success" href="08_absolute_and_relative.html">Next</a>
</div>
```