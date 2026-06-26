return {
  {
    "leoluz/nvim-dap-go",
    opts = {
      dap_configurations = {
        {
          type = "go",
          name = "Debug API",
          request = "launch",
          program = "${workspaceFolder}/cmd/api",
        },
      },
    },
  },
}
