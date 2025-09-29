return {
  {
    'AstroNvim/astrocore',
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- Navigation
          ['0'] = { function () vim.api.nvim_feedkeys('^', 'n', false) end, desc='Jump to the first non-blank character of the line' },
          ['-'] = { function () vim.api.nvim_feedkeys('g_', 'n', false) end, desc='Jump to the last non-blank character of the line' },
          --
          ['<leader>\\'] = { '<cmd>noh<cr>', desc='Clear highlighting' }
        },
        v = {
          ['0'] = { function () vim.api.nvim_feedkeys('^', 'v', false) end, desc='Jump to the first non-blank character of the line' },
          ['-'] = { function () vim.api.nvim_feedkeys('g_', 'v', false) end, desc='Jump to the last non-blank character of the line' },
        }
      }
    }
  }
}
