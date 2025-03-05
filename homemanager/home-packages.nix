{ inputs, pkgs, pkgs-stable, ... }:
{
  home.packages = with pkgs; [
    ## unstable packages
    neofetch
    git
    octaveFull
  ] ++ (with pkgs-stable; [
    ## stable packages

    gnupg1
  ]);
}
