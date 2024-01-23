# My Neovim Bindings

Constant WIP (Usually updated when I find a plugin I like).

Tested and (surprisingly) works fine with Windows. Supports Neovim v0.7 and greater.

## How to Install


- Install Packer 

Unix:
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Windows:
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

- Clone this repo to `~/.config/nvim` (Unix) or `~/AppData/Local/nvim` (Windows)
- Install plugins with `:PackerInstall`
