vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "onegrayer"

local util = require "onegrayer.util"
Config = require "onegrayer.config"
C = require "onegrayer.palette"
local highlights = require "onegrayer.highlights"
local Treesitter = require "onegrayer.Treesitter"
local markdown = require "onegrayer.markdown"
local Whichkey = require "onegrayer.Whichkey"
local Notify = require "onegrayer.Notify"
local Git = require "onegrayer.Git"
local LSP = require "onegrayer.LSP"
local diff = require "onegrayer.diff"

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
