local fn = vim.fn
local status, _ = pcall(require, "packer")
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if not status then
	fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Packer is not installed")
	return false
end
require('ad/packer')
vim.cmd [[PackerInstall]]
return true
