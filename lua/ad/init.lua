require('ad.patch')
local isinstalled = require('ad/install')
if isinstalled then
	require('ad.settings')
	require('ad.remap')
	require('ad.packer')
end
