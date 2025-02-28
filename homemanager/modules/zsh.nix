{ config, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    shellAliases = {};
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "robbyrussell"; # blinks is also really nice
    };
  };
}
