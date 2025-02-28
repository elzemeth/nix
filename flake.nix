{
  description = "h3k1n-nix-darwin";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-24.11";
    nix-darwin.url = "github:LnL7/nix-darwin/master";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";

    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    nixvim.url = "github:nix-community/nixvim";
    nixvim.inputs.nixpkgs.follows = "nixpkgs";

    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs, nixpkgs-stable, nixvim, home-manager, ... }:
    let
    system = "x86_64-darwin";
  in {
    darwinConfigurations."hakan-MacBook-Pro" = nix-darwin.lib.darwinSystem {
      modules = [ 
        ./darwin/configuration.nix 
        home-manager.darwinModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.hakan = import ./homemanager/home.nix;
        
          home-manager.extraSpecialArgs = {
            pkgs-stable = import nixpkgs-stable {
              inherit system;
              config.allowUnfree = true;
            };
            inherit inputs;
          };
        
          home-manager.sharedModules = [
            nixvim.homeManagerModules.nixvim
            inputs.spicetify-nix.homeManagerModules.default
          ];
        }
      ];
      specialArgs = { inherit inputs; };
    };
  };
}
