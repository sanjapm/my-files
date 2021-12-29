-- Theme

-- Enable true colors
vim.opt.termguicolors = true

-- I don't need it for some stupid reason
vim.cmd "syntax on"

-- Set colorsheme
require "colors.tomorrow-night"

-- Highlight groups
vim.cmd [[

hi Search       guifg = None     guibg = #282a2e
hi IncSearch    guifg = None     guibg = #373b41
hi MatchParen   guifg = None     guibg = #282a2e

" Statusline
hi Edge         guifg = #1c1c1c  guibg = #848a8a
hi Inter        guifg = #c5c8c6  guibg = #2a2b2e
hi Block        guifg = #c5c8c6  guibg = #373b41

" Lightspeed
hi LightspeedLabel           guifg = #d84c54                 gui = bold,underline
hi LightspeedLabelOverlapped guifg = #cc6666                 gui = bold,underline
hi LightspeedShortcut        guifg = #ffffff guibg = #d84c54 gui = bold,underline
hi LightspeedLabelDistant    guifg = #8abeb7                 gui = bold,underline
hi link LightspeedOneCharMatch LightspeedLabel

]]

-- Light
if (os.getenv("ALACRITTY_LOG")) then require "colors.tomorrow"
    vim.cmd [[
    hi link Edge  Statusline
    hi link Inter Statusline
    hi link Block Statusline
    ]]
    -- TODO configure lightspeed
end
