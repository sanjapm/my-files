-- autopair

return {
  "windwp/nvim-autopairs",
  event = "VeryLazy",
  opts = {
    check_ts = true,
    disable_filetype = {"tex", "TelescopePrompt"},
    fast_wrap = {
      map = "<M-e>",
      chars = { "{", "[", "(", "\"", "'" },
      pattern = [=[[%"%"%>%]%)%}%,]]=],
      end_key = "$",
      before_key = "h",
      after_key = "l",
      cursor_pos_before = true,
      keys = "qwertyuiopzxcvbnmasdfghjkl",
      manual_position = true,
      highlight = "Search",
      highlight_grey="Comment"
    },
  },
}
