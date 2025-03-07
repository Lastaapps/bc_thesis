-- Requires exrc to be enabled, see :help exrc

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- TeX
lspconfig.texlab.setup {
  capabilities = capabilities,
  cmd = { 'docker', 'exec', '-i', '--privileged', 'bc_thesis', 'texlab' },
  settings = {
    texlab = {
      build = {
        args = {
          "-pdflua",
          "-interaction=nonstopmode",
          "-synctex=1",
          "-auxdir=build",
          "%f",
        },
        auxDirectory = "build",
        logDirectory = "build",
        onSave = true,
        useFileList = true,
        forwardSearchAfter = true,
      },
      chktex = {
        onEdit = true,
        onOpenAndSave = true,
      },
      latexindent = {
        args = { '-l' },
      },
      experimental = {
        followPackageLinks = true,
      },
    },
  },
}
