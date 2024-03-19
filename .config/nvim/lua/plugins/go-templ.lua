local capabilities = require("cmp_nvim_lsp").default_capabilities()

return {
  {

    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "templ" })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {
          filetypes_include = { "templ" },
        },
        htmx = { filetypes_include = { "templ", "html" } },
        html = { filetypes_include = { "templ", "html" } },
      },
    },
  },
  {
    "",
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        templ = { "custom_templ_fmt" },
      },
      formatters = {
        custom_templ_fmt = {
          command = "templ fmt",
          stdin = true,
        },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "templ", "tailwindcss-language-server", "htmx-lsp", "html-lsp" })
    end,
  },
}
