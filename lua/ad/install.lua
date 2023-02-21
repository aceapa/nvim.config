local fn = vim.fn
local status, packer = pcall(require, "packer")
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local ispackerempty = fn.empty(install_path) > 0 
if ispackerempty then
	fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	return false
end
if not status then
	print("Packer is not installed")
	return false
end
return true
