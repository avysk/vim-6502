# vim-6502

This is a very simple plugin providing syntax highlighting for 6502 assembly
language if you use
[Merlin32 cross-assembler](https://brutaldeluxe.fr/products/crossdevtools/merlin/).

An effort was made to support not only the standard 6502 instructions, but also
Merlin32-specific directives.

## Installation

If you use vim-plug, use `Plug 'avysk/vim-6502'` in your `.vimrc` file. If you
use another plugin manager, please refer to its documentation.

## Warning

The plugin will set filetype of `*.S` files to `6502` (I think in stock vim
they are set to `R`).
