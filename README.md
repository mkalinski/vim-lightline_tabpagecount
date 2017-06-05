# lightline\_tabpagecount

Vim plugin providing a function intended as a tab component for
[lightline.vim](https://github.com/itchyny/lightline.vim).

Displays the number of windows / buffers open in a tab.

Inspired by a similar extensions built into
[vim-airline](https://github.com/vim-airline/vim-airline).

## Usage

```vim
let g:lightline = {
\	'tab_component_function': {
\		'tabpagecount': 'lightline_tabpagecount#component',
\	},
\	'tab': {
\		'active': ['tabnum', 'filename', 'tabpagecount', 'modified'],
\		'inactive': ['tabnum', 'filename', 'tabpagecount', 'modified'],
\	},
\}
```

## Configuration

```vim
" printf-compatible string that accepts two numerical values: number of windows
" and number of buffers (in that order).
let g:lightline_tabpagecount#format = '(w:%d,b:%d)'
```
