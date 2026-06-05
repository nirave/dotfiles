-- dap start all command
vim.keymap.set("n", ",d", ":lua require('dap-python').setup()<CR> <BAR> :lua require('dapui').setup()<CR> <BAR> :lua require('dapui').open()<CR>")

-- nvim-dap python setup
vim.keymap.set("n", ",ps", ":lua require('dap-python').setup()<CR>")

-- nvim-dap dapui setup
vim.keymap.set("n", ",us", ":lua require('dapui').setup()<CR>")
vim.keymap.set("n", ",uo", ":lua require('dapui').open()<CR>")
vim.keymap.set("n", ",uc", ":lua require('dapui').close()<CR>")

-- nvim-dap keymappings
-- Press f5 to debug
vim.keymap.set('n', '<F5>', ":lua require'dap'.continue()<CR>")
vim.keymap.set('n', ',c', ":lua require'dap'.continue()<CR>")
-- Press CTRL + b to toggle regular breakpoint
vim.keymap.set('n', '<C-b>', ":lua require'dap'.toggle_breakpoint()<CR>")
vim.keymap.set('n', ',b', ":lua require'dap'.toggle_breakpoint()<CR>")
-- Press CTRL + c to toggle Breakpoint with Condition
vim.keymap.set('n', '<C-c>', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>")
vim.keymap.set('n', ',bc', ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint Condition: '))<CR>")
-- Press CTRL + l to toggle Logpoint
vim.keymap.set('n', '<C-l>', ":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log Point Msg: '))<CR>")
-- Pressing F10 to step over
vim.keymap.set('n', '<F10>', ":lua require'dap'.step_over()<CR>")
vim.keymap.set('n', ',s', ":lua require'dap'.step_over()<CR>")
-- Pressing F11 to step into
vim.keymap.set('n', '<F8>', ":lua require'dap'.step_into()<CR>")
vim.keymap.set('n', ',i', ":lua require'dap'.step_into()<CR>")
-- Pressing F12 to step out
vim.keymap.set('n', '<F9>', ":lua require'dap'.step_out()<CR>")
vim.keymap.set('n', ',o', ":lua require'dap'.step_out()<CR>")
-- Press F6 to open REPL
vim.keymap.set('n', '<F6>', ":lua require'dap'.repl.open()<CR>")
-- Press dl to run last ran configuration (if you used f5 before it will re run it etc)
vim.keymap.set('n', 'dl', ":lua require'dap'.run_last()<CR>")
