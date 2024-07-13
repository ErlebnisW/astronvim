return {
  "folke/flash.nvim",
  event = "VeryLazy",
  dependencies = {
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          x = {
            ["s"] = {
              function() require("flash").jump() end,
              desc = "Flash",
            },
            ["R"] = {
              function() require("flash").treesitter_search() end,
              desc = "Treesitter Search",
            },
            ["S"] = {
              function() require("flash").treesitter() end,
              desc = "Flash Treesitter",
            },
          },
          o = {
            ["r"] = {
              function() require("flash").remote() end,
              desc = "Remote Flash",
            },
            ["R"] = {
              function() require("flash").treesitter_search() end,
              desc = "Treesitter Search",
            },
            ["s"] = {
              function() require("flash").jump() end,
              desc = "Flash",
            },
            ["S"] = {
              function() require("flash").treesitter() end,
              desc = "Flash Treesitter",
            },
          },
          n = {
            ["s"] = {
              function() require("flash").jump() end,
              desc = "Flash",
            },
            ["S"] = {
              function() require("flash").treesitter() end,
              desc = "Flash Treesitter",
            },
          },
        },
      },
    },
  },
  opts = {
    modes = {
      -- options used when flash is activated through
      -- a regular search with `/` or `?`
      search = {
        -- when `true`, flash will be activated during regular search by default.
        -- You can always toggle when searching with `require("flash").toggle()`
        enabled = true,
        highlight = { backdrop = false },
        jump = { history = true, register = true, nohlsearch = true },
        search = {
          -- `forward` will be automatically set to the search direction
          -- `mode` is always set to `search`
          -- `incremental` is set to `true` when `incsearch` is enabled
        },
      },
      char = {
        jump_labels = true
      }
    },
  },
}
