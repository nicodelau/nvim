return {
  "yetone/avante.nvim",
  build = function()
    if vim.fn.has("win32") == 1 then
      return "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    else
      return "make"
    end
  end,
  event = "VeryLazy",
  version = false,
  opts = {
    provider = "openai",
    providers = {
      openai = {
        endpoint = "https://api.openai.com/v1",
        model = "gpt-3.5-turbo",
        timeout = 30000,
        extra_request_body = {
          temperature = 0.7,
          max_tokens = 2048,
        },
      },
    },
    input = {
      provider = "native",
      provider_opts = {
        title = "Avante Input",
        placeholder = "Escribí tu prompt...",
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
}
