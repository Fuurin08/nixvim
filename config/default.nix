{
  # Import all your configuration modules here
  imports = [
    #./lazy.nix
    ./bufferline.nix
    ./catppuccin.nix
    ./telescope.nix
    ./keymaps.nix
    ./which-key.nix

    # ui
    #./ui/indent-blankline.nix
    #./ui/alpha.nix
    ./ui

    #completion
    ./completion
    
    # languages
    ./languages/treesitter/treesitter.nix
    ./languages/treesitter/treesitter-context.nix
    ./languages/treesitter/treesitter-textobjects.nix
    ./languages/treesitter/ts-context-commentstring.nix
    #    ./languages/nix
    ./lsp
    
    ./utils
  ];
}
