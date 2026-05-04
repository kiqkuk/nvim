# nvim

Yet another Neovim build. I'm trying to see how far I can go using only native features. No fancy plugin managers, just me and the `news.txt`.

## The goal
I want a setup that's fast and doesn't break every time a plugin updates. I’m exploring the built-in features to keep things minimalist and clean.

## What's native?
Most of the core functionality is handled by Nvim itself:
* **Autocomplete & LSP**: For the "smart" stuff.
* **Treesitter**: For the colors.
* **vim.pack**: To manage the very few things I actually need.
* **Custom Statusline**: I made this myself to keep it lightweight.

## The one exception
I'm not a monster. I still use **Catppuccin** because it looks too good to ignore. It's the only plugin I use.

## Tips?
Inspired by Nvim 0.12.0. If you have tips on how to do things even more "native", let me know! I'm here to learn and simplify my workflow.

## Installation
```bash
cd ~/.config && git clone https://github.com/kiqkuk/nvim.git
