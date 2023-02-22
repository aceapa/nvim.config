require('ad.patch')
local status, _ = pcall(require, "ad/install")
if status then
	require('ad.settings')
	require('ad.remap')
--	require('ad.packer')
end
