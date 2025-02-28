{
  luasnip = {
    enable = true;

    settings = {
      enable_autosnippets = true;
      store_selection_keys = "<Tab>";
      # exit_roots = true;
      # keep_roots = true;
      # link_roots = true;
      # update_events = [
      #   "TextChanged"
      #   "TextChangedI"  
      # ];
    };

    fromVscode = [
      { paths = "./Snippets/";  }
    ];
  };
}
