To create a symbolic link in Unix, at the Unix prompt, enter: This is for local machine

```
 ln -s source_file myfile

```

Example:

```
ln -s ~/Music/rails/myvim/.vimrc ~/.vimrc1

```

#### Go to Definition using g

##### Place the cursor on any variable in your program.

``` gd ``` will take you to the local declaration.

``` gD ``` will take you to the global declaration.

``` g* ``` search for the word under the cursor (like *, but g* on 'rain' will find words like 'rainbow').

``` g# ``` same as g* but in backward direction.

``` gg ``` goes to the first line in the buffer (or provide a count before the command for a specific line).

``` G ```  goes to the last line (or provide a count before the command for a specific line).

##### See also,

``` gf ``` will go to the file under the cursor
``` g] ``` and other commands will jump to a tag definition (a tag can be a function or variable name, or more).


```diff
+ this text is highlighted in 
- this text is highlighted in red

*
#
+
```