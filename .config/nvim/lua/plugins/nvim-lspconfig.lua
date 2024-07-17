return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      jsonls = {
        -- lazy-load schemastore when needed
        on_new_config = function(new_config)
          new_config.settings.json.schemas = new_config.settings.json.schemas or {}
          vim.list_extend(
            new_config.settings.json.schemas,
            require("schemastore").json.schemas({
              ignore = {
                "WebExtensions",
                "Web App Manifest",
                "Foxx Manifest",
              },
            })
          )
        end,
        settings = {
          json = {
            format = {
              enable = true,
            },
            validate = { enable = true },
          },
        },
      },
      -- eslint = {},
    },
    -- setup = {
    --   eslint = function()
    --     require("lazyvim.util").lsp.on_attach(function(client)
    --       if client.name == "eslint" then
    --         client.server_capabilities.documentFormattingProvider = true
    --       elseif client.name == "tsserver" then
    --         client.server_capabilities.documentFormattingProvider = false
    --       end
    --     end)
    --   end,
  },
}
