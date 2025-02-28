{ pkgs, pkgs-stable, ... }:
{
  home.packages = with pkgs; [
    ## unstable packages
    neofetch
  ] ++ (with pkgs-stable; [
    ## stable packages
    git
    gnupg1
  ]);
}
