{
  plugins.fidget = {
    enable = true;
    logger = {
      level = "info"; # one of “off”, “error”, “warn”, “info”, “debug”, “trace”
    };
    notification = {
      pollRate = 10; # How frequently to update and render notifications
      filter = "info"; # “off”, “error”, “warn”, “info”, “debug”, “trace”
      historySize = 128; # Number of removed messages to retain in history
      overrideVimNotify = true;
      redirect = ''
        function(msg, level, opts)
          if opts and opts.on_open then
            return require("fidget.integration.nvim-notify").delegate(msg, level, opts)
          end
        end
      '';
      configs = {
        default = "require('fidget.notification').default_config";
      };

      window = {
        align = "bottom"; # How to align the notification window.
        normalHl = "Comment";
        winblend = 0;
        border = "none"; # none, single, double, rounded, solid, shadow
      };
    };
    progress = {
      display = {
        renderLimit = 16; # How many LSP messages to show at once.
      };
    };
  };
}
