local NvimTree = {
		NvimTreeFolderIcon = {fg = C.blue, },
		NvimTreeIndentMarker = {fg = C.gray, },
		NvimTreeNormal = {fg = C.light_gray, bg = C.alt_bg, },
		NvimTreeVertSplit = {fg = C.alt_bg, bg = C.alt_bg, },
		NvimTreeFolderName = {fg = C.blue, },
		NvimTreeOpenedFolderName = {fg = C.cyan, style = "italic", },
		NvimTreeImageFile = {fg = C.purple, },
		NvimTreeSpecialFile = {fg = C.orange, },
		NvimTreeGitStaged = {fg = C.sign_add, },
		NvimTreeGitNew = {fg = C.sign_add, },
		NvimTreeGitDirty = {fg = C.sign_add, },
		NvimTreeGitDeleted = {fg = C.sign_delete, },
		NvimTreeGitMerge = {fg = C.sign_change, },
		NvimTreeGitRenamed = {fg = C.sign_change, },
		NvimTreeSymlink = {fg = C.cyan, },
		NvimTreeRootFolder = {fg = C.fg, style = "bold", },
		NvimTreeExecFile = {fg = C.green, },
}

return NvimTree