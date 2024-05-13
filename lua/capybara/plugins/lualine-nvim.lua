return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local custom_gruvbox = require'lualine.themes.gruvbox_dark' 

    require("lualine").setup({
      options = {
        theme = custom_gruvbox,
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {
          { "filename", file_status = true, path = 4 },
        },
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'},
      },
    })
  end,
}
