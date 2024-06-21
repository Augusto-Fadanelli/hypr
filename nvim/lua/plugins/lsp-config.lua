return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
   'williamboman/mason-lspconfig.nvim',
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "bashls", "clangd", "cmake", "cssls", "cssmodules_ls", "css_variables", "unocss", "dockerls", "docker_compose_language_service", "golangci_lint_ls", "gopls", "html", "jsonls", "biome", "quick_lint_js", "tsserver", "vtsls", "ltex", "texlab", "lua_ls", "autotools_ls", "markdown_oxide", "marksman", "zk", "intelephense", "pyright", "ruff", "rust_analyzer", "sqls", "lemminx" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.bashls.setup({})  -- Bash
      lspconfig.clangd.setup({})  -- C/C++
      lspconfig.cmake.setup({})  -- CMake
      lspconfig.cssls.setup({})  -- CSS LSP
      lspconfig.cssmodules_ls.setup({})  -- CSS Autocompletition
      lspconfig.css_variables.setup({})  -- CSS
      lspconfig.unocss.setup({})  -- CSS Engine
      lspconfig.dockerls.setup({})  -- Docker LSP
      lspconfig.docker_compose_language_service.setup({})  -- Docker Compose LSP
      lspconfig.golangci_lint_ls.setup({})  -- Go
      lspconfig.gopls.setup({})  -- Go LSP
      lspconfig.html.setup({})  -- HTML
      lspconfig.jsonls.setup({})  -- JSON LSP
      lspconfig.biome.setup({})  -- JavaScript, JSON and TypeScript
      lspconfig.quick_lint_js.setup({})  -- JavaScript Linter
      lspconfig.tsserver.setup({})  -- JavaScript and TypeScript Language Server
      lspconfig.vtsls.setup({})  -- JavaScript and TypeScript
      lspconfig.ltex.setup({})  -- Grammar checking of markup languages
      lspconfig.texlab.setup({})  -- Latex LSP
      lspconfig.lua_ls.setup({})  -- Lua LSP
      lspconfig.autotools_ls.setup({})  -- Autoconf, Automake, Make LSP
      lspconfig.markdown_oxide.setup({})  -- Markdown, provides a preview of the text for an item
      lspconfig.marksman.setup({})  -- Markdown LSP
      lspconfig.zk.setup({})  -- Markdown, a plain text note-taking assistant
      lspconfig.intelephense.setup({})  -- PHP LSP
      lspconfig.pyright.setup({})  -- Python LSP
      lspconfig.ruff.setup({})  -- Python Linter
      lspconfig.rust_analyzer.setup({})  -- Rust LSP
      lspconfig.sqls.setup({})  -- SQL LSP
      lspconfig.lemminx.setup({})  -- XML LSP

      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', 'k', vim.lsp.buf.hover, {})
      vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

    end
  }
}
