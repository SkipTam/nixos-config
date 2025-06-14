{
  description = "Austin-pc nixos config";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
  };
  outputs = { self, nixpkgs, ... } @ inputs:
 {
    nixosConfigurations.austin-nixos-pc = nixpkgs.lib.nixosSystem {

         modules = [
         ./hosts/austin-nixos-pc/configuration.nix
	       ./modules/plasma.nix
         ./modules/net-pkgs.nix
         ./modules/desktop-tools.nix
         ./modules/docker.nix
         ./modules/gaming.nix
         ./modules/kde-connect.nix
         ./modules/media-full.nix
         ./modules/fish.nix
         ./modules/virtman.nix
         ./modules/ssh-server.nix
         ./modules/editors.nix
         ./modules/starship.nix
         ./modules/amdfix.nix
         ];
	  };
 };
}
