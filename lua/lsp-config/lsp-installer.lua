require("nvim-lsp-installer").on_server_ready(
	function (server)
		local opts = {
			on_attach = require("lsp-config.handlers").on_attach,
			capabilities = require("lsp-config.handlers").capabilities,
		}

		if server.name == "jsonls" then
			local jsonls_opts = require("lsp-config.settings.jsonls")
			opts = vim.tbl_deep_extend("force", jsonls_opts, opts)
		end

		if server.name == "sumneko_lua" then
			local sumneko_opts = require("lsp-config.settings.sumneko_lua")
			opts = vim.tbl_deep_extend("force", sumneko_opts, opts)
		end

		server:setup(opts)
	end
)
