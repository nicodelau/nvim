-- ~/.config/nvim/lua/plugins/php.lua
return {
  { "neovim/nvim-lspconfig", opts = {
      servers = {
        intelephense = {}, -- buen LSP para PHP
      },
    },
  },
}

