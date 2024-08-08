{
  pkgs,
  ...
}:

{
  plugins.lazy = {
    enable = true;
    plugins = [
      #nvim-lualine
    ];
  };
}
