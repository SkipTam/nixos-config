{ config, pkgs, ...}:
{
programs.fish.enable = true;
users.defaultUserShell = pkgs.fish;
programs.fish.shellAliases = {
  nrs = "sudo nixos-rebuild switch --flake .";
};

environment.systemPackages = with pkgs;
[
  fzf
  fishPlugins.fzf
  fishPlugins.done
];
}