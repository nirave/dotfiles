-- Enable the list of buffers
vim.g['airline#extensions#tabline#enabled'] = 1

vim.g['airline_section_y'] = ""

-- Get rid of extra fluff at the end of the bottom status line
vim.g['airline_section_z'] = '%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L'

-- Disable all warnings and errors on the bottom status line
vim.g['airline_section_warning'] = ""
vim.g['airline_section_error'] = ""
