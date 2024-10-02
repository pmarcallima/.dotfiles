return {
  {
    'rebelot/kanagawa.nvim', -- neorg needs a colorscheme with treesitter support
    config = function()
      --          vim.cmd.colorscheme("kanagawa")
    end,
  },
  {
    'nvim-neorg/neorg',
    lazy = false,
    version = '9.1.1',
    icon_preset = 'diamond',
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.concealer'] = {},
          ['core.completion'] =  {
    config = {
              engine = "nvim-cmp",
            }
  },

          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = '~/notes',
                tgc = '~/notes/TGC',
              },
              default_workspace = 'notes',
            },
          },
        },
      }

      vim.wo.foldlevel = 99
      vim.g.maplocalleader = ','
      vim.wo.conceallevel = 2
    end,
  },
}
