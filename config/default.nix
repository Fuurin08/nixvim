{
  # Import all your configuration modules here
  imports = [
    ./lazy.nix
    ./bufferline.nix
    ./catppuccin.nix
    ./telescope.nix
    ./which-key.nix

    # ui
    ./ui/indent-blankline.nix
    ./ui/alpha.nix

    # languages
    ./languages/treesitter/treesitter.nix
  ];
}
