return {
  'tpope/vim-fugitive',
  cmd = { 'G', 'Git', 'Gdiffsplit', 'Gread', 'Gwrite', 'Ggrep', 'GMove', 'GDelete', 'GBrowse' },
  keys = {
    { '<leader>gs', ':G<CR>', desc = '[G]it [S]tatus (Fugitive)' },
    { '<leader>gc', ':G commit<CR>', desc = '[G]it [C]ommit' },
    { '<leader>gb', ':G blame<CR>', desc = '[G]it [B]lame' },
    { '<leader>gd', ':G diff<CR>', desc = '[G]it [D]iff' },
    { '<leader>gl', ':G log<CR>', desc = '[G]it [L]og' },
  },
}
