return {
  {
    "3rd/image.nvim",
    opts = {
      backend = "kitty", -- Ghostty supports kitty protocol
      processor = "magick_cli",
      integrations = {
        markdown = {
          enabled = true,
        },
      },
    },
  },
}
