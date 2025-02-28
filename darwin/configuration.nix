{ pkgs, config, ... }: {
	
	imports = [
    ./modules
    ./homebrew/homebrew.nix
  ];

	# List packages installed in system profile. To search by name, run:
	# $ nix-env -qaP | grep wget
	environment.systemPackages = with pkgs; [ ];

	environment.variables = {
	  EDITOR = "nvim";
	  VISUAL = "nvim";
	};

	nixpkgs.config.allowUnfree = true;

  users.users.hakan = {
    home = "/Users/hakan";
  };

  environment.darwinConfig = "$HOME/.config/nix-darwin/configuration.nix";

  ## to be or not to be ^^^^^^^^^

  system.defaults.dock.expose-animation-duration = 5000.0;
  system.defaults.loginwindow.GuestEnabled = false;

  system.defaults.universalaccess.reduceMotion = false;
	#Necessary for using flakes on this system.
	nix.settings.experimental-features = "nix-command flakes";


	# Set Git commit hash for darwin-version.
	system.configurationRevision = config.rev or config.dirtyRev or null;
	
	# Used for backwards compatibility, please read the changelog before changing.
	# $ darwin-rebuild changelog
	system.stateVersion = 6;
 	
	# The platform the configuration will be used on
	nixpkgs.hostPlatform = "x86_64-darwin";

	
}
