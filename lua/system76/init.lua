vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "system76"

local util = require "system76.util"
Config = require "system76.config"
C = require "system76.palette"
local highlights = require "system76.highlights"
local Treesitter = require "system76.Treesitter"
local markdown = require "system76.markdown"
local Notify = require "system76.Notify"
local Whichkey = require "system76.Whichkey"
local Git = require "system76.Git"
local LSP = require "system76.LSP"
local diff = require "system76.diff"


local skeletons = {
  highlights,
  Treesitter,
  markdown,
  Whichkey,
  Notify,
  Git,
  LSP,
  diff,
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end