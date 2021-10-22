# nvim-lsp-typescript-config

A Neovim configuration with native LSP for a TypeScript development environment

## Prerequisites

Install the TypeScript language sever, as well as Prettier for formatting

```sh
npm install --global typescript-language-server prettier
```

## Set up

### Clone repository

Clone repository and replace your current `nvim` folder with this new one.

```sh
mv ~/.config/nvim ~/.config/nvim-old && git clone git@github.com:albingroen/nvim-lsp-typescript-config.git ~/.config/nvim
```


### Install plugins

```sh
vim init.lua
```

Install dependencies using Packer

```
:PackerSync
```
