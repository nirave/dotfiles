# dotfiles
This is my own neovim "distribution" if you will

# NeoVim

## Installation

  git clone <this repo>
  cd dotfiles/nvim
  ./pvim

Run :PackerSync

That's it.

You can then move that directory to whever you want

## Commands

### Fuzzy Finder

Telescope is used for Fuzzy Finder
| ---- | ----------- |
| ff  | find file fuzzy finder |
| fg  | grep files fuzzy finder |
| fb  | find buffers fuzzy finder |
| fh  | help fuzzy finder |

### Autocomplete

YouCompleteMe is used for autocomplete

| Keys | Description |
| ---- | ----------- |
| gf  | Go To Definition |
| gd  | Go To Declaration |
| gr  | Go To References (does not work with c/c++) |

### File tree

NerdTree is used for file exploration

| Keys | Description |
| ---- | ----------- |
| tt | Toggle Nerd Focus |
| m | (Within NerdTree), opens up menu for things like new file |
| Ctrl-W - | Closes the NerdTree menu |

### Commenting

Nerd Commentor is used for comments

| Keys | Description |
| ---- | ----------- |
| gcp | toggle comment until the end of the paragraph
| gcc | toggle comment on line 
| gcX | toggle comment on X+1 lines
| v (for visual mode) | select lines, then press gc to toggle comments

### Help

| Keys | Description |
| ---- | ----------- |
| :help <topic> | help on <topic> |
| :helpclose | closes help |

### Buffers

| Keys | Description |
| ---- | ----------- |
| :ls | list all open buffer |
| :b <index> or <file> | opens a file |
| bn | go to next buffer |
| bp | go to previous buffer |
| bq | quit the current buffer without saving |
| :bw! | quit the current buffer without saving |

### Movement

| Keys | Description |
| ---- | ----------- |
| [N]hjkl | left, down, up, right |
| I | insert at beginning of line |
| A | insert at end of line |
| [N]b | beginning of word |
| [N]e | end of word |
| [N]B | beginning of word (but symbols/punctuation are not separators)  |
| [N]E | end of word (but symbols/punctuation are not separators)  |
| H M L | Home, Middle, Last of the screen |
| g GG | Beginning, end of window |
| Ctrl-O | Go to last cursor |
| Ctrl-u | move up by half screen |
| Ctrl-d | move down by half screen |

### Cheatsheet

| Keys | Description |
| ---- | ----------- |
| :HowIn <language> <lookup> | e.g. :HowIn python open file |
: :Cheat <lookup> | e.g. :Cheat pytest |

### Blamer

| Keys | Description |
| ---- | ----------- |
| :BlameToggle | Toggles off the git blame |
