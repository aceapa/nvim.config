local fn = vim.fn
local cmd = vim.cmd
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local no_packer = fn.empty(fn.glob(install_path)) > 0
if no_packer then
    print("Install Packer")
    fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
    })
    vim.cmd [[packadd packer.nvim]]
    require('ad.packer')
    cmd [[PackerInstall]]
end
return true

