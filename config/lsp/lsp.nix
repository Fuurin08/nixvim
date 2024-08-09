{
  plugins.lsp = {
    enable = true;
    servers = {
    #  nixd.enable = true;
      nil-ls.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
    };
  };
}
