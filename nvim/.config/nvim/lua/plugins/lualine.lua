return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Completely replace the default sections
      local function macro_recording()
        local reg = vim.fn.reg_recording()
        return reg ~= "" and "recording @" .. reg or ""
      end
      opts.sections = {
        lualine_a = { "mode" },
        lualine_b = { macro_recording },
        lualine_c = { "filename" },
        lualine_x = {},
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
