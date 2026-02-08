return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>a', function()
      harpoon:list():add()
    end, { desc = '[A]dd file to Harpoon' })

    vim.keymap.set('n', '<C-e>', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'Toggle [H]arpoon UI' })

    vim.keymap.set('n', '<Tab>', function()
      harpoon:list():next { ui_nav_wrap = true }
    end, { desc = 'Cycle Next Harpoon File' })

    vim.keymap.set('n', '<S-Tab>', function()
      harpoon:list():prev { ui_nav_wrap = true }
    end, { desc = 'Cycle Prev Harpoon File' })
  end,
}
