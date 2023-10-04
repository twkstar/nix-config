return {
  colorscheme = "catppuccin-mocha",

  options = {
    opt = {
      relativenumber = true,
      signcolumn = "auto",
      spell = true,
      swapfile = false,
      smartindent = true,
    },
  },

  diagnostics = {
    virtual_text = true,
    underline = true,
  },

  plugins = {
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.colorscheme.catppuccin" },
    { import = "astrocommunity.utility.noice-nvim" },
    { import = "astrocommunity.media.vim-wakatime" },
    { import = "astrocommunity.motion.leap-nvim" },
    { import = "astrocommunity.motion.flit-nvim" },
    { import = "astrocommunity.scrolling.nvim-scrollbar" },
    { import = "astrocommunity.editing-support.auto-save-nvim" },
    { import = "astrocommunity.editing-support.todo-comments-nvim" },
    -- languages
    { import = "astrocommunity.pack.markdown" },
    { import = "astrocommunity.pack.json" },
    { import = "astrocommunity.pack.yaml" },
    { import = "astrocommunity.pack.toml" },
    { import = "astrocommunity.pack.lua" },
    { import = "astrocommunity.pack.go" },
    { import = "astrocommunity.pack.bash" },
    { import = "astrocommunity.pack.html-css" },
  },

  lsp = {
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
      },
      timeout_ms = 1000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      "marksman",
      "jsonls",
      "yamlls",
      "taplo",
      "html",
      "cssls",
      "lua_ls",
      "gopls",
      "nil_ls",
      "bashls",
    },
  },
}
