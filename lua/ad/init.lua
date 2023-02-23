require('ad.patch')
local status, val = pcall(require, "ad/install")
if val then
	require('ad.settings')
	require('ad.remap')
	require('ad.packer')
end
