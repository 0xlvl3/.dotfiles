local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")

local mason_null_ls_status, mason_null_ls = pcall(require, 'mason-null-ls')
if not mason_null_ls_status then
	return
end

mason.setup()

mason_lspconfig.setup({
	ensure_installed = {
		"pyright",
	},
	 	-- auto-install configured servers (with lspconfig)
  		automatic_installation = true, 	-- not the same as ensure_installed
})

mason_null_ls.setup({
	ensure_installed = {
		"prettier",
	}
})
