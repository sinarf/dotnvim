local status_ok, pqf = pcall(require, "pqf")
if not status_ok then
   vim.notify("Could not load module pqf !")
end

pqf.setup(
   {
      signs = {
         error = '󰯆',
         warning = '',
         info = '',
         hint = ''
      },

      -- By default, only the first line of a multi line message will be shown. --
      show_multiple_lines = false,

      -- How long filenames in the quickfix are allowed to be. 0 means no limit.
      -- Filenames above this limit will be truncated from the beginning with [...]
      max_filename_length = 0,
   }
)
