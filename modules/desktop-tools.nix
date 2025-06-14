{ pkgs, config, ...}:
{
imports = [
     ./tools.nix
 ];

environment.systemPackages = with pkgs;
[
    obsidian
    winbox4
    bitwarden-desktop
    brave
    nextcloud-client
    signal-desktop
    libreoffice-qt6-fresh
    keepassxc
    kdePackages.partitionmanager
    librewolf
    gimp
    krita
    onlyoffice-desktopeditors
    chromium
];
programs.firefox.enable = true;
services.flatpak.enable = true;
}
