return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- load first
    config = function()
      vim.cmd.colorscheme("gruvbox")
    end,
  },
}
