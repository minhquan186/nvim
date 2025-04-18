local o = vim.opt

o.clipboard = 'unnamedplus'   -- use system clipboard
o.completeopt = {'menu', 'menuone', 'noselect'}
o.mouse = 'a'                 -- allow the mouse to be used in Nvim

---------
-- Tab --
---------
o.tabstop = 2                 -- number of visual spaces per TAB
o.softtabstop = 2             -- number of spacesin tab when editing
o.shiftwidth = 2              -- insert 4 spaces on a tab
o.expandtab = true            -- tabs are spaces, mainly because of python

---------------
-- UI config --
---------------
-- Editor
o.number = true               -- show absolute number
o.relativenumber = false      -- add numbers to each line on the left side
o.cursorline = true           -- highlight cursor line underneath the cursor horizontally
o.splitbelow = true           -- open new vertical split bottom
o.splitright = true           -- open new horizontal splits right
o.termguicolors = true        -- enabl 24-bit RGB color in the TUI
o.showmode = false            -- we are experienced, wo don't need the "-- INSERT --" mode hint

-- Fold
vim.wo.foldlevel = 99

---------------
-- Searching --
---------------
o.incsearch = true            -- search as characters are entered
o.hlsearch = true             -- highlight matches
o.ignorecase = true           -- ignore case in searches by default
o.smartcase = true            -- but make it case sensitive if an uppercase is entered

------------------
-- Shell config --
------------------
o.shell = 'pwsh'
local powershell_options = {
  shell = vim.fn.executable "pwsh" == 1 and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end
