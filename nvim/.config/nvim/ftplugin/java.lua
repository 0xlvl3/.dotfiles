-- FILE NOT NEEDED, KEEPING AS REFERENCE


--local capabilities = vim.lsp.protocol.make_client_capabilities()
--capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
--
--local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
--
--local config = {
--    cmd = {
--	'java',
--		'-Declipse.application=org.eclipse.jdt.ls.core.id1',
--		'-Dosgi.bundles.defaultStartLevel=4',
--		'-Declipse.product=org.eclipse.jdt.ls.core.product', 
--		'-Dlog.level=ALL',
--		'-Xmx1G',
--		'-jar', '~/projects/java/jdt-lang-server/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
--		'-configuration', '~/projects/java/jdt-lang-server/config_linux/', 
--		'-data', vim.fn.expand('~/.cache/jdtls-workspace') .. workspace_dir,
--	},
--	capabilities = capabilities,	
--}
--require('jdtls').start_or_attach(config)

