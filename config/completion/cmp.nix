{
  plugins = {
    cmp-nvim-lsp.enable = true;
    #cmp-nvim-lsp-document-symbol.enable = true;
    cmp-buffer.enable = true;
    cmp-path.enable = true;
    cmp-cmdline.enable = true;
    cmp = {
      enable = true;
      autoEnableSources = false;
      settings = {
        experimental = {
          ghost_text = true;
        };
        sources = [
          { name = "nvim_lsp"; }
          { name = "buffer"; }
          { name = "path"; }
          { name = "cmdline"; }
        ];
        window = {
          completion = {
            border = "rounded";
          };
          documentation = {
            border = "rounded";
          };
        };
      };
    };
  };
  extraConfigLua =
    ''
    -- `/` cmdline setup.
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })
    -- `:` cmdline setup.
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
        { name = 'cmdline', }
      })
    })
    '';
}
