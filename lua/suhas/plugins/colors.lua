return {

  --NOTE: FOLKE-TOKYONIGHT
  -- 'folke/tokyonight.nvim',
  -- priority = 1000,
  -- config = function()
  --   ---@diagnostic disable-next-line: missing-fields
  --   require('tokyonight').setup {
  --     styles = {
  --       comments = { italic = false }, -- Disable italics in comments
  --     },
  --   }
  --   vim.cmd.colorscheme 'tokyonight-storm'
  -- end,

  -- --NOTE: ROSE-PINE
  -- 'rose-pine/neovim',
  -- name = 'rose-pine',
  -- priority = 1000,
  -- config = function()
  --   require('rose-pine').setup {
  --     styles = {
  --       italic = false,
  --       bold = true,
  --       transparency = false,
  --     },
  --   }
  --   vim.cmd.colorscheme 'rose-pine-moon'
  -- end,

  --NOTE: KANAGAWA
  'rebelot/kanagawa.nvim',
  name = 'kanagawa',
  priority = 1000,
  config = function()
    require('kanagawa').setup {
      compile = false,
      undercurl = true,
      commentStyle = { italic = false },
      functionStyle = {},
      keywordStyle = { bold = true, italic = false },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,
      dimInactive = false,
      terminalColors = true,
      colors = { -- add/modify theme and palette colors
        palette = {},
        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
        return {}
      end,
      theme = 'dragon', -- Load "wave" theme
      background = { -- map the value of 'background' option to a theme
        dark = 'dragon', -- try "dragon" !
        light = 'lotus',
      },
    }
    vim.cmd.colorscheme 'kanagawa-dragon'
  end,

  --   --NOTE: CATPUCCIN
  --   'catppuccin/nvim',
  --   name = 'catppuccin',
  --   priority = 1000,
  --   config = function()
  --     require('catppuccin').setup {
  --       flavour = 'auto', -- latte, frappe, macchiato, mocha
  --       background = { -- :h background
  --         light = 'latte',
  --         dark = 'mocha',
  --       },
  --       transparent_background = false, -- disables setting the background color.
  --       show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
  --       term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
  --       dim_inactive = {
  --         enabled = false, -- dims the background color of inactive window
  --         shade = 'dark',
  --         percentage = 0.15, -- percentage of the shade to apply to the inactive window
  --       },
  --       no_italic = false, -- Force no italic
  --       no_bold = false, -- Force no bold
  --       no_underline = false, -- Force no underline
  --       styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
  --         comments = { 'italic' }, -- Change the style of comments
  --         conditionals = { 'italic' },
  --         loops = { 'bold' },
  --         functions = {},
  --         keywords = { 'bold' },
  --         strings = {},
  --         variables = {},
  --         numbers = {},
  --         booleans = { 'bold' },
  --         properties = {},
  --         types = {},
  --         operators = {},
  --         -- miscs = {}, -- Uncomment to turn off hard-coded styles
  --       },
  --       color_overrides = {},
  --       custom_highlights = {},
  --       default_integrations = true,
  --       integrations = {
  --         cmp = true,
  --         gitsigns = true,
  --         nvimtree = true,
  --         treesitter = true,
  --         notify = false,
  --         mini = {
  --           enabled = true,
  --           indentscope_color = '',
  --         },
  --       },
  --     }
  --     -- colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  --     vim.cmd.colorscheme 'catppuccin-mocha'
  --   end,
}
