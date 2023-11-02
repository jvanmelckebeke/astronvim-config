return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

 { import = "astrocommunity.colorscheme.catppuccin" },
 {
  "catppuccin",
  opts = {
   integrations = {
    sandwich = false,
    noice = true,
    mini = true,
    leap = true,
    markdown = true,
    neotest = true,
    cmp = true,
    overseer = true,
    lsp_trouble = true,
    rainbow_delimiters = true,
   }
  }
 },
 { import = "astrocommunity.completion.copilot-lua-cmp" },


 { import = "astrocommunity.split-and-window.windows-nvim",
    config = {
     filetypes = {
      ["*"] = true
     }
    }
},
 {
  "anuvyklack/windows.nvim",
  lazy = false,
  requires = {
   "anuvyklack/middleclass",
   "anuvyklack/animation.nvim",
  },
  config = function()
   vim.o.winwidth = 10
   vim.o.winminwidth = 10
   vim.o.equalalways = false
   require("windows").setup({
    autowidth = {
     enable = true,
     winwidth = 10,
     filetype = {
      help = 2
     }
    },
    ignore = {
     buftype = {"quickfix"},
     filetype = {"NvimTree", "neo-tree", "undotree", "gundo"},
    }
   })
  end
 }
}
