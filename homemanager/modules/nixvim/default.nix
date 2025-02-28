{
  programs.nixvim = {
    enable = true;
    colorschemes.rose-pine.enable = true;
    nixpkgs.useGlobalPackages = true;

    opts = {} // (import ./opts.nix);
    globals = {} // (import ./globals.nix);

    viAlias = true;
    vimAlias = true;
  
    plugins = {
      web-devicons.enable = true;
    } // (
         (import ./plugins/telescope.nix)  
      // (import ./plugins/treesitter.nix)  
      // (import ./plugins/lsp/lsp.nix)  
      // (import ./plugins/neo-tree.nix)
      // (import ./plugins/cmp.nix)
      // (import ./plugins/oil.nix)
      // (import ./plugins/colorizer.nix)
      // (import ./plugins/luasnip/luasnip.nix)
      // (import ./plugins/cmp_luasnip/cmp_luasnip.nix)
    );

    keymaps = []
      ++ import ./keymaps/telescope.nix
      ++ import ./keymaps/oil.nix;
  };
}
