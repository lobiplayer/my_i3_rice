-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    "loctvl842/monokai-pro.nvim",
    config = function()
    require("monokai-pro").setup()
    vim.cmd([[colorscheme monokai-pro]])
  end
  }  