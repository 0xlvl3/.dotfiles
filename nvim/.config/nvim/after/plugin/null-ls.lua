local null_ls = require("null-ls")

-- Define the sources for null-ls
local sources = {
    -- Your existing sources
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.flake8,

    -- Prettier for formatting CSS, JavaScript, and HTML
    null_ls.builtins.formatting.prettier.with({
        filetypes = { "css", "javascript", "html", "md", "txt", "markdown", "scss" },
    }),
}

-- Your existing augroup
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Setup null-ls
null_ls.setup({
    sources = sources,
    on_attach = function(current_client, bufnr)
        if current_client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        filter = function(client)
                            -- only use null-ls for formatting instead of lsp server
                            return client.name == "null-ls"
                        end,
                        bufnr = bufnr,
                    })
                end,
            })
        end
    end,
})
