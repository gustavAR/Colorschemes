vim.api.nvim_command("hi clear")
if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "aurora"

local util = require("aurora.util")
Config = require("aurora.config")
C = require("aurora.palette")

local async
async = vim.loop.new_async(vim.schedule_wrap(function ()
    local markdown = require("aurora.markdown")
	local Whichkey = require("aurora.Whichkey")
	local Git = require("aurora.Git")
	local LSP = require("aurora.LSP")
	

    local skeletons = {
        markdown, Whichkey, Git, LSP
    }

    for _, skeleton in ipairs(skeletons) do
        util.initialise(skeleton)
    end

    async:close()
end))

local highlights = require("aurora.highlights")
local Treesitter = require("aurora.Treesitter")


local skeletons = {
    highlights, Treesitter
}

for _, skeleton in ipairs(skeletons) do
    util.initialise(skeleton)
end

async:send()