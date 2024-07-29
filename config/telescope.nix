{
  ...
}:

{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native = {
        enable = true;
      };
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files";
        options.desc = "Find project files";
      };
    };
  };
}
