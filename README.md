# dotfiles
Public repository for my dotfiles.

## VIM

### Installation

curl https://raw.githubusercontent.com/nirave/dotfiles/main/.vimrc --output ~/.vimrc

Once opened, run

    :PluginInstall

Afterwards, run:

    python3 build.py --clang-completer in ycmd directory

### Commands

#### Autocomplete

YouCompleteMe is used for autocomplete

| Keys | Description |
| ---- | ----------- |
| ,gf  | Go To Definition |
| ,gd  | Go To Declaration |
| ,gr  | Go To References (does not work with c/c++) |

#### File tree

NerdTree is used for file exploration

| Keys | Description |
| ---- | ----------- |
| Ctrl-N | Open NerdTree Window |
| Ctrl-T | Toggle Nerd Focus |
| \n | Toggle Nerd Focus |

### Commenting

Nerd Commentor is used for comments

| Keys | Description |
| ---- | ----------- |
| [N]\cc | comment out N lines below |
| [N]\cn | comment out N lines with nesting |
| [N]\cu | uncomment out N lines below |

### Help

| Keys | Description |
| ---- | ----------- |
| :help <topic> | help on <topic> |
| :helpclose | closes help |

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
