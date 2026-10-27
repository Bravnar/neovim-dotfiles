return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    config = function()
      require("window-picker").setup({
        -- This tells the picker to use the theme's default colors
        hint = "floating-big-letter",
        selection_chars = "FJDKSLA;", -- Easier home-row keys
        filter_rules = {
          include_current_win = false,
          autoselect_one = true,
          bo = {
            filetype = { "neo-tree", "neo-tree-popup", "notify" },
            buftype = { "terminal", "quickfix" },
          },
        },
        picker_config = {
          floating_picker_config = {
            border = 'shadow',
          },
        },
      })
      -- Force the overlay to use your theme's 'Visual' selection color
      vim.api.nvim_set_hl(0, 'WindowPickerFloatingHint', { link = 'IncSearch', default = false })
      -- This handles the border of that float
      vim.api.nvim_set_hl(0, 'WindowPickerFloatingHintNC', { link = 'Visual', default = false })
    end,
  },
}
