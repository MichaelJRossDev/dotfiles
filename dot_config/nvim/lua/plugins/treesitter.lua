return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  opts = {
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    ensure_installed = { "rust", "lua", "vim", "bash", "markdown" },
    auto_install = true,
  },
}

