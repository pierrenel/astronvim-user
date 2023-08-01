local config = {options = {}, plugins = {init = {}}}
local plugins = config.plugins.init

return {
  colorscheme = "monokai-pro",
  plugins = {
    {
      "goolord/alpha-nvim",
      opts = function(_, opts) -- override the options using lazy.nvim
        opts.section.header.val = { -- change the header section value
          " My Custom ",
          " Dashboard ",
        }
      end,
    },    
    {
    "loctvl842/monokai-pro.nvim",
    config = function()
        require("monokai-pro").setup {
        filter = "ristretto", -- classic | octagon | pro | machine | ristretto | spectrum
    }
      end,
    },    
    {
      "catppuccin/nvim",
      name = "catppuccin",
      config = function()
        require("catppuccin").setup {}
      end,
    },
  },
}
