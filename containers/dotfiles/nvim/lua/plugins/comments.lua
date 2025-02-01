-- Better commenting than out of box comments

return {
  "numToStr/Comment.nvim",
  name = "comment",
  config = function ()
    require("Comment").setup()
  end
}

