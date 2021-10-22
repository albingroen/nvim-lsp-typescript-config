# nvim-lsp-typescript-config

A Neovim configuration with native LSP for a TypeScript development environment

## Recommendations

- Neovim >0.6.0 (Typescript LSP performance is greatly improved in this version)

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
nvim init.lua
```

Install dependencies using Packer

```
:PackerSync
```

## Screenshot

![CleanShot 2021-10-22 at 08 09 35@2x](https://user-images.githubusercontent.com/19674362/138401976-daedf600-6fbc-49c3-a221-adeadf7e2b3d.png)
