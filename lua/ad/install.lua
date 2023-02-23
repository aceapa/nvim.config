local fn = vim.fn
local cmd = vim.cmd
local status, _ = pcall(require, "packer")
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local ispackerempty = fn.empty(fn.glob(install_path)) > 0
if ispackerempty then
	print("Packer is not installed")
	fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	require('ad/packer')
	cmd [[PackerInstall]]
	return false
end

