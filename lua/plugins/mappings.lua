return {
  {
    'AstroNvim/astrocore',
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ['<leader>\\'] = { '<cmd>noh<cr>', desc='Clear highlighting' },
          -- Navigation
          ['0'] = { function () vim.api.nvim_feedkeys('^', 'n', false) end, desc='Jump to the first non-blank character of the line' },
          ['-'] = { function () vim.api.nvim_feedkeys('g_', 'n', false) end, desc='Jump to the last non-blank character of the line' },
          -- Editing
          ['U'] = { '<C-r>', desc='Redo' },
          ['<leader>s'] = { function() vim.lsp.buf.rename() end, desc = "Rename symbol" }
        },
        v = {
          ['0'] = { function () vim.api.nvim_feedkeys('^', 'v', false) end, desc='Jump to the first non-blank character of the line' },
          ['-'] = { function () vim.api.nvim_feedkeys('g_', 'v', false) end, desc='Jump to the last non-blank character of the line' },
        }
      }
    }
  }
}
