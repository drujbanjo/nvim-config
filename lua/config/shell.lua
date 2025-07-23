if vim.fn.has("win32") == 1 then
  vim.opt.shell = '"C:\\Program Files\\Git\\bin\\bash.exe"'
  vim.opt.shellcmdflag = "-c"
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
end
