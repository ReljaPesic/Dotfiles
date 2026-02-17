return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Completely replace the default sections
      opts.sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch" },
        lualine_c = { "filename" },
        lualine_x = {
          {
            require("noice").api.status.mode.get,
            cond = require("noice").api.status.mode.has,
          },
        },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      }

      -- You can also modify specific options
      -- opts.options.component_separators = { left = "", right = "" }
      -- opts.options.section_separators = { left = "", right = "" }

      return opts
    end,
  },
}
