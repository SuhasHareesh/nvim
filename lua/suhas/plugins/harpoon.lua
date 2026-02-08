return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()
    local function announce_file()
      local filename = vim.fn.expand '%:t'
      -- Using a little folder/file icon for that nerd-font aesthetic
      vim.api.nvim_echo({ { '   ' .. filename, 'Bold' } }, false, {})
    end

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd file to Harpoon' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle [H]arpoon UI' })

    vim.keymap.set('n', '<Tab>', function()
      harpoon:list():next { ui_nav_wrap = true }
      announce_file()
    end, { desc = 'Cycle Next Harpoon File' })

    vim.keymap.set('n', '<S-Tab>', function()
      harpoon:list():prev { ui_nav_wrap = true }
      announce_file()
    end, { desc = 'Cycle Prev Harpoon File' })
  end,
}
