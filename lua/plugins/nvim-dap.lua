return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

    -- Adapter as a function to allow dynamic ports
    dap.adapters.python = function(callback, config)
      local host = config.host or "127.0.0.1"
      local port = config.port or 5678
      callback({ type = 'server', host = host, port = port })
    end

    dap.configurations.python = {
      {
        type = "python",
        request = "attach",
        name = "Attach to mim",
        host = "127.0.0.1",
        port = 5678,
        pathMappings = {
          {
            localRoot = "/home/scipio/scipio/mim-api/app",
            remoteRoot = "/code/app",
          },
        },
      },
      {
        type = "python",
        request = "attach",
        name = "Attach to automation",
        host = "127.0.0.1",
        port = 5679,
        pathMappings = {
          {
            localRoot = "/home/scipio/scipio/automation-api/app",
            remoteRoot = "/code/app",
          },
        },
      },
      {
        type = "python",
        request = "attach",
        name = "Attach to scope",
        host = "127.0.0.1",
        port = 5680,
        pathMappings = {
          {
            localRoot = "/home/scipio/scipio/scope-api/app",
            remoteRoot = "/code/app",
          },
        },
      },
      {
        type = "python",
        request = "attach",
        name = "Attach to targeting",
        host = "127.0.0.1",
        port = 5681,
        pathMappings = {
          {
            localRoot = "/home/scipio/scipio/targeting-api/app",
            remoteRoot = "/code/app",
          },
        },
      },
      {
        type = "python",
        request = "attach",
        name = "Attach to bfd",
        host = "127.0.0.1",
        port = 5682,
        pathMappings = {
          {
            localRoot = "/home/scipio/scipio/blue-force-drone-api/app",
            remoteRoot = "/code/app",
          },
        },
      },
      {
        type = "python",
        request = "attach",
        name = "Attach to event",
        host = "127.0.0.1",
        port = 5683,
        pathMappings = {
          {
            localRoot = "/home/scipio/scipio/event-api/app",
            remoteRoot = "/code/app",
          },
        },
      },
      {
        type = "python",
        request = "attach",
        name = "Attach to media",
        host = "127.0.0.1",
        port = 5686,
        pathMappings = {
          {
            localRoot = "/home/scipio/scipio/media-api/app",
            remoteRoot = "/code/app",
          },
        },
      },
    }
  end,
}
