return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        phpactor = {
          root_dir = function(bufnr, on_dir)
            local root = vim.fs.root(bufnr, {
              "config.php",
            })

            if root then
              on_dir(root)
            end
          end,
        },
      },
    },
  },
}
