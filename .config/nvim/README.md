# `NeoVim`

Many plug-ins map `NeoVims` default behaviour to their own domain. So doing `o` would normally open a line in insert mode, from nvim-tree this creates a new file.

Doing `nvim .` opens the current directory.

Some good videos:
- https://www.youtube.com/watch?v=kufiElToFHo with config repo at https://github.com/smnatale/dotfiles/tree/main/nvim/.config/nvim
- https://www.youtube.com/watch?v=6mxWayq-s9I with config repo at https://github.com/josean-dev/dev-environment-files/tree/main/nvim/.config/nvim
- [https://www.youtube.com/watch?v=g1gyYttzxcI] is the first of a series of 5 videos setting up `NeoVim`


To Do:
- Integrate the
  [render-markdown](https://github.com/meanderingprogrammer/render-markdown.nvim)
  plug-in.


## Commands

Go through the tutorial, start with `:Tutor`

- Check health with `:checkhealth`. Close with `q`.
- Switch between windows `ctrl-w`.
- The default <leader> key is the backslash `\`.


## Package Manager

Using `lazy.nvim` (NOT the `LazyVim` distribution which is a collection of packages):
- Use `:Lazy` to open the UI.  Close with `q`.
- Health check is `:checkhealth lazy`.
- Configuration file is `/lua/lazy_init.lua`, and it loads plug-ins from `/lua/plugins/`


## File & Text Search

- Using `fzf` rather than telescope.
- Need some binaries installed, note that some might be installed already:
    - `fzf` - Fizzy finder.
    - `ripgrep` - Recursively searches the current directory for a reg ex pattern.
    - `fd` - File indexing.
    - Just had to add `fzf` last time on `Arch Linux`, the other two were installed (check via `:checkhealth`)
    - On Mac, install all three at once with `brew install fzf ripgrep fd`
- Use [`fzf.lua`](https://github.com/ibhagwan/fzf-lua) for integration with `NeoVim`

