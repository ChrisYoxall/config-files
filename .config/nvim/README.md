# NeoVim

Many plug-ins map NeoVims default behaviour to their own domain. So doing `o` would normally open a line in insert mode, from nvim-tree this creates a new file.

Doing `nvim .` opens the current directory.

Some good videos:
- https://www.youtube.com/watch?v=kufiElToFHo with config repo at https://github.com/smnatale/dotfiles/tree/main/nvim/.config/nvim
- https://www.youtube.com/watch?v=6mxWayq-s9I with config repo at https://github.com/josean-dev/dev-environment-files/tree/main/nvim/.config/nvim


## Commands

Go through the tutorial, start with `:Tutor`

- Check health with `:checkhealth`. Close with `q`.
- Switch between windows `ctrl-w`.
- Neovim's default <leader> key is the backslash `\`.


## Package Manager

Using lazy.nvim (NOT the LazyVim distribution which is a collection of packages):
- Use `:Lazy` to open the UI.  Close with `q`.
- Healthcheck is `:checkhealth lazy`.
