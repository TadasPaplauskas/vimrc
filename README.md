# vimrc
My very basic vim setup and a cheatsheet to go with it. Trying to keep customizations to a minimum.

## Installing
Read through setup.sh, it's only 3 lines. After you understand what it's doing, just run:
```
curl -s https://raw.githubusercontent.com/tadaspaplauskas/vimrc/master/setup.sh | bash
```

## Cheatsheet
* Undo: __u__
* Redo: __ctrl r__
* Insert before the cursor: __i__
* Insert after the cursor: __a__
* Insert at the end of the line: __A__
* Insert at the beginning of the line: __I__
* Next autocomplete option: __ctrl n__
* Previous autocomplete option: __ctrl p__
* Suspend vim process: __ctrl z__
* Resume suspended vim process from console: __fg (foreground)__
* Go to the beginning of the current or previous word: __b__
* Go to the beginning of next word: __w__
* Go to the end of current or next word: __e__
* Go to the end of the previous word: __ge__
* Select current word: __viw__
* Select current line: __V__ 
* Open new buffer: __command :e filepath__
* Open existing buffer: __command :b1, :b filename (or part of it)__
* Previous buffer: __command :bp__
* Next buffer: __command :bn__
* Close buffer: __command :bd [number]__
* Toggle previous buffer: __command :b#__
* List all buffers: __command :ls__
* Turn off search highlight: __:noh__
* Find and replace: __%s/search/replace[/regex flag]__
* Converts tabs to spaces in document: __retab__
* Tab navigation commands: __:tabnew :tabclose :tabp :tabn 1-9gt (go to tab)__
* Find a file: __:find filename[tab]__
* Explore files: __:E[xlore]__
* Create a new file from explorer: __%__
* Copy a file from explorer: __mf__ (mark files), __mt__ (select target folder), __mc__ (copy)
* Rename file from explorer: __R__
* Create a new file from explorer: __%__
* Show full current path: __ctrl + g__
* Move line up or down: __command :m-+123__
* Duplicate line: __yy__ or __Y__ and then __p__ or __P__
* Indent or unindent a line: __<<__ or __>>__
* Indent or unindent a block of text: select in visual mode and __<__ or __>__
* Jump to paragraph: __{__ and __}__
* Jump to block: __[[__ and __]]__
* Browse old file list: __command :bro[wse] ol[dfiles][!]__
* Navigate functions in this file: __:CtrlPFunky__ or __<leader> f__
* Navigate to the definition of the function under the cursor: __<leader> tf__
* Find symbol in current line: __f{char}__
* Find symbol in current line (backwards): __F{char}__
* Remove line without cutting (blackhole registry): __d__
* Display current line in the center: __zz__
* Search in all files: __:grep "Keyword" . -RI --color__
* Jump to the last cursor position: __`.__
## More goodies
https://peteraba.com/blog/my-vanilla-vim-cheatsheet/

