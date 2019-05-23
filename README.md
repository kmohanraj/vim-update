To create a symbolic link in Unix, at the Unix prompt, enter: This is for local machine

```
 ln -s source_file myfile

```

Example:

```
ln -s ~/Music/rails/myvim/.vimrc ~/.vimrc1

```

### 1.Go to Definition using g

##### Place the cursor on any variable in your program.

```
gd - will take you to the local declaration.

gD - will take you to the global declaration.

g* - search for the word under the cursor (like *, but g* on 'rain' will find words like 'rainbow').

g# - same as g* but in backward direction.

gg - goes to the first line in the buffer (or provide a count before the command for a specific line).

G  - goes to the last line (or provide a count before the command for a specific line).
```
##### See also,

```
gf - will go to the file under the cursor
g] - and other commands will jump to a tag definition (a tag can be a function or variable name, or more).
```

### 2.Split the screen,

```
Use :AS command to split the screen horizontally

Use :AV command to split the screen vertical.

					OR

Use :vsp horizontally 
Use :sp  vertical 
```

### 3.Switch between Opened file,
```
Use :A  command to switch between opened files.

Use :AT separate tab within the same Vim window.
```

### 4. Automatically Indent your Code

```
gg=G


ex,

before:

def test
temp = test
end

after: 

def test
  temp = test
end
```

### 5. Search and replace

```

/search_word

```

```
:/%s/old/new/g 

OR

:%s/old/new/gc - replace all old with new throughout file with confirmations


: Command mode

% Means across all lines

/old is regex to find

/new/ is regex to replace 

/g means global

```

### 6.Insert Mode - Inserting/Appending text

```
i - start insert mode at cursor

I - insert at the beginning of the line

a - append after the cursor

A - append at the end of the line

o - open (append) blank line below current line (no need to press return)

O - open blank line above current line

ea - append at end of word

Esc - exit insert mode
```

### 7. Up and Down Single Line,


```
ddkP - up

ddp - down
```

