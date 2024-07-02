return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")
    -- enable comment
    comment.setup({
      toggler = {
        line = '<leader>/',
      },
      opleader = {
        line = '<leader>/',
        -- block = '<leader>b',
      },
    })
  end,
}
