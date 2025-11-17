require('lint').linters_by_ft = { 
  lua = {'luac'},
  python = {'ruff'},
  sh = {'bash'},
  c = {'compiler'},
  cpp = {'compiler'}
}

-- To get the filetype of a buffer you can run := vim.bo.filetype.

