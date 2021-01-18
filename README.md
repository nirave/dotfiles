# dotfiles
Public repository for my dotfiles.

## VIM

### Installation

curl https://raw.githubusercontent.com/nirave/dotfiles/main/.vimrc --output ~/.vimrc

Once opened, run

    :PluginInstall

Afterwards, setup YouCompleteMe:

    python3 build.py --clang-completer in ycmd directory

Afterwards, setup vimspector (the debugger) for all available languages:

    /.vim/plugged/vimspector
    python3 install_gadget.py --all

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
| Ctrl-n | Open NerdTree Window |
| Ctrl-t | Toggle Nerd Focus |
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

### Tabs

| Keys | Description |
| ---- | ----------- |
| :tabnew <filename> | open file in new tab |
| gt | go to next tab |
| gT | go to previous tab |

### Buffers

| Keys | Description |
| ---- | ----------- |
| :ls | list all open buffer |
| :b <index> or <file> | opens a file |
| :bn | go to next buffer |
| :bp | go to previous buffer |

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
| \K   | Search the keyword |
| :HowIn <language> <lookup> | e.g. :HowIn python open file |

### Debugging

To launch the debugger, you will need to create a .viminspector.json in the current directory.

Here is an example:

    {
      "configurations": {
        "<name>: Launch": {
          "adapter": "debugpy",
          "configuration": {
            "name": "<name>: Launch",
            "type": "python",
            "request": "launch",
            "cwd": "~/src",
            "python": "/usr/bin/python3",
            "stopOnEntry": true,
            "console": "externalTerminal",
            "debugOptions": [],
            "program": "./test.py"
          }
        }
      }
    }


| Keys | Description |
| ---- | ----------- |
| :VimspectorReset | close Debugger |
| F5 | continue |
| F4 | restart |
| F3 | stop |
| F10 | step over |
| Ctrl-w hjkl (or arrows)) | switch windows in debugger |
| :ls | list buffers |
| :<buffer number x> | switch to buffer x |
